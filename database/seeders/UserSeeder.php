<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'Reza Febriyan',
            'username' => 'rezapf',
            "email" => "rezafebriyan00@gmail.com",
            'email_verified_at' => now(),
            "password" => bcrypt('persija99'),
            'remember_token' => Str::random(10)
        ]);

        User::create([
            'name' => 'Rista Amelia',
            'username' => 'ristaap',
            "email" => "rista@gmail.com",
            'email_verified_at' => now(),
            "password" => bcrypt('persija99'),
            'remember_token' => Str::random(10)
        ]);
    }
}
