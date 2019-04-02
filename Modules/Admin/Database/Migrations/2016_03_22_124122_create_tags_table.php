<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTagsTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tags', function (Blueprint $table) {
            $table->increments('id');
            $table->string('slug');
            $table->timestamps();
        });

        Schema::create('tags_translations', function (Blueprint $table) {
            $table->increments('id');

            $table->text('name');
            $table->text('description');

            $table->unsignedInteger('author')->nullable()->index();
            $table->foreign('author')->references('id')->on('users')->onDelete('set null');
            
            $table->unsignedInteger('tag_id');
            $table->foreign('tag_id')->references('id')->on('tags')->onDelete('cascade');

            $table->string('locale')->nullable()->index();
            $table->foreign('locale')->references('locale')->on('language')->onDelete('set null');

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
        Schema::drop('tags');
        Schema::drop('tags_translations');
    }

}
