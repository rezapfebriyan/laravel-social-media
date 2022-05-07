<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFollowsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('follows', function (Blueprint $table) {
            $table->foreignId('user_id')->constrained('users')->onDelete('cascade'); // id user nya
            $table->foreignId('following_user_id')->constrained('users')->onDelete('cascade'); // id user yg difollow
            $table->primary(['user_id', 'following_user_id']); // biar gabisa follow lagi | 1 -> 2, jadi 1 -> 2 tidak bisa diduplikat
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('follows');
    }
}
