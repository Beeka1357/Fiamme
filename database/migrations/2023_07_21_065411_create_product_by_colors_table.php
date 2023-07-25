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
        Schema::create('product_by_colors', function (Blueprint $table) {
            $table->id();
                $table->integer('product_id');
                $table->string('product_by_color');
                $table->string('product_by_thambnail');
                $table->string('product_by_multiImgs');
                $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('product_by_colors');
    }
};
