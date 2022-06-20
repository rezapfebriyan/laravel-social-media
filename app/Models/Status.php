<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
    use HasFactory;
    protected $fillable = ['body', 'identifier'];

    //*  Relasi status punya 1 user
    public function user() // status akan tau bahwa relasinya user_id
    {
        return $this->belongsTo(User::class);
    }
}
