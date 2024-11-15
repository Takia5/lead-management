<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    /**
     * Register a new user.
     */
    public function register(Request $request)
    {
        // Validate input
        $validator = Validator::make($request->all(), [
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:8|confirmed|regex:/[A-Z]/|regex:/[0-9]/|regex:/[@$!%*?&]/',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'error' => $validator->errors(),
            ], 400);
        }

        try {
            // Create the user
            $user = User::create([
                'email' => $request->email,
                'password' => Hash::make($request->password), // Hash the password
                'role' => 'Sales Rep', // Default role (can be changed later by Admin)
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'error' => 'User creation failed. Please try again later.',
            ], 500);
        }

        // Generate the token
        $token = $user->createToken('API Token')->plainTextToken;

        // Return the token in the response
        return response()->json(['token' => $token], 201);  // 201 Created
    }
}
