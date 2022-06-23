<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FollowingController extends Controller
{
    public function index(User $user, $follow)
    {
        if ($follow !== 'following' && $follow !== 'follower') {
            return redirect(route('profile', $user->username));
        }

        return view('users.following', [
            'user' => $user,
            'follows' => $follow == "following" ? $user->follows : $user->followers //! ngirim data following/ers yg akan ditampilkan
        ]);
    }

    public function store(Request $request, User $user)
    {
        if (Auth::user()->hasFollow($user) ? Auth::user()->unfollow($user) : Auth::user()->follow($user));

        return back()->with('success', 'You are follow the user');
    }
}
