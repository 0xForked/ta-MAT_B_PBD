<?php

namespace Database\Seeders;

use Database\Factories\ResepFactory;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TableResepSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('resep')->insert(ResepFactory::data());
    }
}
