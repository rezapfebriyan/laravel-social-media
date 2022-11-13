<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UpdateProfileInformationController extends Controller
{
    public function edit()
    {
        return view('users.edit');
    }

    public function update(Request $request)
    {
        $request->validate([
            'name' => ['string', 'min:3', 'max:30', 'required'],
            'email' => ['email', 'string', 'min:3', 'max:30', 'required'],
            'username' => ['required', 'alpha_num']
        ]);
    }
}
