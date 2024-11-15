<?php

namespace App\Http\Controllers;

use App\Models\FollowUp;
use App\Events\FollowUpStatusChanged;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class FollowUpController extends Controller
{

   // Method for fetching follow-ups with lead details
   public function list()
   {
       // Fetch all follow-ups along with related lead data (name, email)
       $followUps = FollowUp::with('lead') 
           ->get();

       return response()->json($followUps);
   }   

   public function getStatusOptions()
   {
       try {
           // Execute the raw query 
           $columnData = DB::select('SHOW COLUMNS FROM follow_ups WHERE Field = "status"');
           
           if (!empty($columnData) && isset($columnData[0]->Type)) {
               $type = $columnData[0]->Type;
   
               // Extract ENUM values using regex
               preg_match('/^enum\((.*)\)$/', $type, $matches);
   
               if (isset($matches[1])) {
                   $values = array_map(function ($value) {
                       return trim($value, "'");
                   }, explode(',', $matches[1]));
   
                   return response()->json(['status_options' => $values], 200);
               }
           }
   
           // Return an error if the ENUM values cannot be retrieved
           return response()->json(['error' => 'Status options could not be retrieved.'], 500);
   
       } catch (\Exception $e) {
           // Log the exception
           \Log::error('Error fetching status options: ' . $e->getMessage());
           return response()->json(['error' => 'An error occurred while fetching status options.'], 500);
       }
   }
   
    // Create a new follow-up
    public function store(Request $request)
    {
        // Validate the input
        $request->validate([
            'lead_id' => 'required|exists:leads,id', // Ensure lead exists
            'scheduled_at' => 'required|date|after:now', // Scheduled date must be in the future
            'status' => 'required|in:Pending,Completed,Missed', // Valid status
        ]);

        // Create the follow-up
        $followUp = FollowUp::create([
            'lead_id' => $request->lead_id,
            'scheduled_at' => $request->scheduled_at,
            'status' => $request->status,
        ]);

        return response()->json($followUp, 201); // Return the created follow-up
    }

    // Update the status of a follow-up
    public function updateStatus(Request $request, $id)
    {
        $request->validate([
            'status' => 'required|in:Pending,Completed,Missed', // Valid status
        ]);

        $followUp = FollowUp::findOrFail($id); // Find the follow-up by ID
        $followUp->status = $request->status;
        $followUp->save();

        // Trigger the FollowUpStatusChanged event
        event(new FollowUpStatusChanged($followUp));

        return response()->json($followUp, 200); // Return updated follow-up
    }

    /**
     * Get all missed follow-ups.
     */
    public function getMissedFollowUps()
    {
        // Get missed follow-ups
        $missedFollowUps = FollowUp::where('status', 'Missed')
            ->where('scheduled_at', '<', now())
            ->with('lead')
            ->get();

        return response()->json($missedFollowUps);
    }
}
