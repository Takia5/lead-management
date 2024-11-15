<?php

namespace App\Policies;

use App\Models\FollowUp;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class FollowUpPolicy
{
    use HandlesAuthorization;

    public function update(User $user, FollowUp $followUp)
    {
        // Allow access if the user is an Admin or Sales Manager
        return in_array($user->role, ['Admin', 'Sales Manager']);
    }
}

