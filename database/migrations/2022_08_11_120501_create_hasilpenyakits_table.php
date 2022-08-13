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
        Schema::create('hasilpenyakits', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('penyakit_id');
            $table->string('name');
            $table->text('description');
            $table->float('value');
            $table->foreign('penyakit_id')->references('id')->on('penyakits')->onDelete('cascade')->onUpdate('cascade');
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
        Schema::dropIfExists('hasilpenyakits');
    }
};