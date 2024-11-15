<?php

namespace App\Http\Controllers;

use App\Models\Lead;
use Illuminate\Http\Request;

class LeadController extends Controller
{
    // Show all leads
    public function index()
    {
        // Return all leads
        return response()->json(Lead::all(), 200);
    }

    // Store a new lead
    public function store(Request $request)
    {
        // Validation
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:leads,email',
            'phone' => 'required|string|max:15',
        ]);

        try {
            // Create the lead
            $lead = Lead::create($request->all());

            return response()->json($lead, 201);
        } catch (\Exception $e) {
            // Return a 500 server error if something goes wrong
            return response()->json(['error' => 'Failed to create lead'], 500);
        }
    }
}
