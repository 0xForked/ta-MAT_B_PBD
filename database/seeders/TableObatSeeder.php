<?php

namespace Database\Seeders;

use Database\Factories\ObatFactory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TableObatSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('obat')->insert(ObatFactory::data());
    }
}
