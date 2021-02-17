<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableResep extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resep', function (Blueprint $table) {
            $table->id('kd_resep');
            $table->string('hari', 10);
            $table->dateTime('tanggal');

            $table->char('kd_pasien', 5);
            $table->char('kd_penyakit', 5);
            $table->char('kd_obat', 5);
            $table->char('kd_dokter', 5);

            $table->foreign('kd_pasien')
                ->references('kd_pasien')
                ->on('pasien');

            $table->foreign('kd_penyakit')
                ->references('kd_penyakit')
                ->on('penyakit');

            $table->foreign('kd_obat')
                ->references('kd_obat')
                ->on('obat');

            $table->foreign('kd_dokter')
                ->references('kd_dokter')
                ->on('dokter');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('table_resep');
    }
}
