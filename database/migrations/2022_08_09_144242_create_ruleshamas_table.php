<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ruleshamas', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('hama_id');
            $table->unsignedBigInteger('gejalahama_id');
            $table->float('value');
            $table->foreign('hama_id')->references('id')->on('hamas')->onDelete('cascade')->onUpdate('cascade');
            $table->foreign('gejalahama_id')->references('id')->on('gejalahamas')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::dropIfExists('ruleshamas');
    }
};
