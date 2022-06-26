<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        //! buat user sekalian statusnya
        User::factory()->hasStatuses(5)->count(10)->create();

        $this->call(UserSeeder::class);
    }
}
