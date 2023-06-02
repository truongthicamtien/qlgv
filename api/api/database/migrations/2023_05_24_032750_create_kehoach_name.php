<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('kehoach', function (Blueprint $table) {
            $table->bigIncrements('ID');
            $table->integer('STT')->nullable();
            $table->string('TEN', 50)->nullable();
            $table->integer('LOAIKEHOACH')->nullable();
            $table->date('THGIANBATDAU')->nullable();
            $table->date('THGIANHOANTHANH')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('kehoach');
    }
};
