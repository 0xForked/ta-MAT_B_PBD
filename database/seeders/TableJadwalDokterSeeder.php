<?php

namespace Database\Seeders;

use Database\Factories\JadwalDokterFactory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TableJadwalDokterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('jadwal_dokter')->insert(JadwalDokterFactory::data());
    }
}
