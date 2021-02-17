<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
         $this->call([
            TableDokterSeeder::class,
            TablePasienSeeder::class,
            TablePenyakitSeeder::class,
            TableObatSeeder::class,
            TableJadwalDokterSeeder::class,
            TableResepSeeder::class
         ]);
    }
}
