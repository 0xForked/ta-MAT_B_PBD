<?php

namespace Database\Seeders;

use Database\Factories\PasienFactory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TablePasienSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('pasien')->insert(PasienFactory::data());
    }
}
