<?php

namespace Database\Seeders;

use Database\Factories\DokterFactory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TableDokterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('dokter')->insert(DokterFactory::data());
    }
}
