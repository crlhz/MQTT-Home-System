<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTopicsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {/*
        Schema::create('topics', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->timestamps();
        });*/

        Schema::table('measurments', function (Blueprint $table) {
            $table->unsignedBigInteger('topic_id')->after('value');
            $table->foreign('topic_id')->references('id')->on('topics');
        });
        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        
        Schema::table('measurments', function (Blueprint $table) {
            $table->dropForeign('topics_id_foreign');
            $table->dropColumn('topic_id');
        });
        Schema::dropIfExists('topics');
    }
}