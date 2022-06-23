<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class TimelineController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request)
    {
        //*  Menampilkan status user yg login
        $statuses = Auth::user()->timeline();
        //! $statuses = Auth::user()->statuses |+| statuses = function relasi yg ada diuser model
        
        return view('timeline', compact('statuses'));
    }
}
