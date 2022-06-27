<?php

namespace App\Traits;

use App\Models\User;

trait Following
{
    public function follows()
    {
        // relasi follownya ke User
        return $this->belongsToMany(User::class, 'follows', 'user_id', 'following_user_id')->withTimestamps();
    }

    public function followers()
    {
        // relasi followersnya ke User
        return $this->belongsToMany(User::class, 'follows', 'following_user_id', 'user_id')->withTimestamps();
    }

    //* Membuat action
    public function follow(User $user)
    {
        return $this->follows()->save($user);
    }

    public function unfollow(User $user)
    {
        //! detach untuk menghapus column relasinya, jadi 1 user(di params) yg di following_user_id akan dihapus
        return $this->follows()->detach($user);
    }

    public function hasFollow(User $user)
    {
        return $this->follows()->where('following_user_id', $user->id)->exists();
    }
}