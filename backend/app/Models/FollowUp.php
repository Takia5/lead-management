<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FollowUp extends Model
{
    protected $fillable = [
        'lead_id', 'scheduled_at', 'status'
    ];

    // Relationship with the Lead model
    public function lead()
    {
        return $this->belongsTo(Lead::class);
    }
}
