<?php

namespace App\Jobs;

use App\Models\FollowUp;
use Carbon\Carbon;
use Illuminate\Support\Facades\Log;


class MarkMissedFollowUps
{
    public function handle()
    {
        
        // Find overdue follow-ups with status "Pending"
        $overdueFollowUps = FollowUp::where('status', 'Pending')
                                    ->where('scheduled_at', '<', Carbon::now())
                                    ->get();

                                    foreach ($overdueFollowUps as $followUp) {
                                        $followUp->status = 'Missed';
                                        $followUp->save();
                                    }
                                    
    }
}
