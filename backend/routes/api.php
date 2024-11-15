<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LeadController;
use App\Http\Controllers\FollowUpController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Auth\LoginController;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
*/

// Route for authenticated user data (optional for testing logged-in users)
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Grouped routes for lead and follow-up management that require authentication
Route::middleware('auth:sanctum')->group(function () {
    // Fetch all leads
    Route::get('/leads', [LeadController::class, 'index']);

    // Lead Management
    Route::post('/leads', [LeadController::class, 'store']); // Create a lead

    

    // Fetch all followups
    Route::get('/followups/list', [FollowUpController::class, 'list']);

    Route::get('/followups/status-options', [FollowUpController::class, 'getStatusOptions']);


    // Follow-Up Management
    Route::post('/followups', [FollowUpController::class, 'store']); // Schedule a follow-up
    Route::put('/followups/{id}/status', [FollowUpController::class, 'updateStatus']); // Update follow-up status
});
Route::middleware('auth:api')->get('/missed-followups', [FollowUpController::class, 'getMissedFollowUps']);

// Route to login 
Route::post('/login', [LoginController::class, 'login']);

// Register route for user registration (using AuthController)
Route::post('/register', [AuthController::class, 'register']);



// use App\Http\Controllers\LeadController;
// use App\Http\Controllers\FollowUpController;

// Route::middleware('auth:api')->group(function () {
//     Route::post('/leads', [LeadController::class, 'store']); // Create a lead
//     Route::post('/followups', [FollowUpController::class, 'store']); // Schedule a follow-up
//     Route::put('/followups/{id}/status', [FollowUpController::class, 'updateStatus']); // Update follow-up status
// });

// use App\Http\Controllers\LeadController;
// use App\Http\Controllers\FollowUpController;


// Route::post('/leads', [LeadController::class, 'store']); // Create a lead
// Route::post('/followups', [FollowUpController::class, 'store']); // Schedule a follow-up
// Route::put('/followups/{id}/status', [FollowUpController::class, 'updateStatus']); // Update follow-up status

