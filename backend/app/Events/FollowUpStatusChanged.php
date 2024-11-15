<?php

namespace App\Events;

use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;
use App\Models\FollowUp;

class FollowUpStatusChanged
{
    use Dispatchable, SerializesModels;

    public $followUp;

    public function __construct(FollowUp $followUp)
    {
        $this->followUp = $followUp;
    }
}
