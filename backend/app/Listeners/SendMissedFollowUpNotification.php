<?php 

namespace App\Listeners;

use App\Events\FollowUpStatusChanged;
use App\Notifications\FollowUpMissedNotification;
use Illuminate\Support\Facades\Notification;

class SendMissedFollowUpNotification
{
    public function handle(FollowUpStatusChanged $event)
    {
        // Only send notification if the follow-up status is "Missed"
        if ($event->followUp->status === 'Missed') {
            // Send the notification
            Notification::send($event->followUp->lead, new FollowUpMissedNotification($event->followUp));
        }
    }
}
