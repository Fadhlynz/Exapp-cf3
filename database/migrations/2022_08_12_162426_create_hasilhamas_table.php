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
        Schema::create('hasilhamas', function (Blueprint $table) {
            $table->id();
             $table->unsignedBigInteger('hama_id');
            $table->string('name');
            $table->text('description');
            $table->text('hama');
            $table->text('gejalahama');
            $table->text('kondisihama');
            $table->float('value');
            $table->foreign('hama_id')->references('id')->on('hamas')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::dropIfExists('hasilhamas');
    }
};