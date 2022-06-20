<?php

namespace App\Models;

use illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'username',
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    //* Membuat relasi - user punya banyak
    public function statuses()
    {
        return $this->hasMany(Status::class);
    }
    
    public function makeStatus($string)
    {
        $this->statuses()->create([
            'body' => $string,
            'identifier' => Str::slug(Str::random(32) . $this->id)
        ]);
    }

    public function timeline()
    {
        $following = $this->follows->pluck('id');

        //*  Menampilkan status user yg login
        return Status::whereIn('user_id', $following)  //! menampilkan status akun yg difollow
                    ->orWhere('user_id', $this->id)  //! menampilkan status kita sendiri
                    ->latest()
                    ->get();
    }

    public function follows()
    {
        // relasi follownya ke User
        return $this->belongsToMany(User::class, 'follows', 'user_id', 'following_user_id')->withTimestamps();
    }

    public function followers()
    {
        // relasi followersnya ke User
        return $this->belongsToMany(User::class, 'follows', 'following_user_id', 'user_id');
    }

    //* Membuat action
    public function follow(User $user)
    {
        return $this->follows()->save($user);
    }
}
