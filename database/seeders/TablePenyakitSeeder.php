<?php

namespace Database\Seeders;

use Database\Factories\PenyakitFactory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TablePenyakitSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('penyakit')->insert(PenyakitFactory::data());
    }
}
