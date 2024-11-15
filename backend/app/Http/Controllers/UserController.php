<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        // Retrieve all users with id, email, and role
        $users = User::select('id', 'email', 'role')->get();

        return response()->json($users);
    }
}
