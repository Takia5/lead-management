<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Lead extends Model
{
    // Specify fields which can be mass-assigned
    protected $fillable = ['name', 'email', 'phone'];
}
