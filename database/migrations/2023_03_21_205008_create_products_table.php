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
        Schema::create('products', function (Blueprint $table) {
            $table->integer('products_id', true);
            $table->integer('products_status')->default(0);
            $table->integer('category_id')->default(0);
            $table->string('product_code', 100)->nullable();
            $table->string('products', 200);
            $table->float('price', 10)->default(0);
            $table->string('image', 200)->nullable();
            $table->string('image_1', 100)->nullable();
            $table->string('image_2', 100)->nullable();
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
};
