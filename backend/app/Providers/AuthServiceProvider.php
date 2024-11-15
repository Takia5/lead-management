<?php

namespace App\Providers;

use App\Models\FollowUp;
use App\Policies\FollowUpPolicy;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * Register any authentication / authorization services.
     */
    public function boot(): void
    {
        $this->registerPolicies();

        // Register policies
        Gate::policy(FollowUp::class, FollowUpPolicy::class);
    }
}
