<?php

namespace App\Notifications;

use App\Models\FollowUp;
use Illuminate\Notifications\Notification;
use Illuminate\Notifications\Messages\BroadcastMessage;

class FollowUpMissedNotification extends Notification
{
    protected $followUp;

    public function __construct(FollowUp $followUp)
    {
        $this->followUp = $followUp;
    }

    public function via($notifiable)
    {
        return ['broadcast']; // Send as a broadcast notification
    }

    public function toBroadcast($notifiable)
{
    // Ensure scheduled_at is a Carbon instance before calling format()
    $scheduledAt = \Carbon\Carbon::parse($this->followUp->scheduled_at); // Parse string to Carbon instance

    return new BroadcastMessage([
        'message' => 'The follow-up for lead ' . $this->followUp->lead->name . 
                     ' scheduled on ' . $scheduledAt->toDateTimeString() . 
                     ' has been marked as Missed.',
        'lead_id' => $this->followUp->lead->id,
        'follow_up_id' => $this->followUp->id,
        'scheduled_at' => $scheduledAt, // Send as Carbon instance or formatted string
    ]);
}

}
