<?php

namespace Database\Factories;

class DokterFactory
{

    public static function data(): array
    {
        return [
           [
            'kd_dokter' => 'D0001',
            'nama' => 'Ema Utami',
            'alamat' => 'Yogyakarta',
            'gender' => 'P',
            'gaji' => 2500000,
           ],
           [
            'kd_dokter' => 'D0002',
            'nama' => 'Suwanto Raharjo',
            'alamat' => 'Jakarta',
            'gender' => 'L',
            'gaji' => 2000000,
           ],
           [
            'kd_dokter' => 'D0003',
            'nama' => 'Emi Susanti',
            'alamat' => 'Semarang',
            'gender' => 'P',
            'gaji' => 1500000,
           ],
           [
            'kd_dokter' => 'D0004',
            'nama' => 'Andi Sunyoto',
            'alamat' => 'Bandung',
            'gender' => 'L',
            'gaji' => 2000000,
           ],
           [
            'kd_dokter' => 'D0005',
            'nama' => 'Emha Taufik Luthfi',
            'alamat' => 'Yogyakarta',
            'gender' => 'L',
            'gaji' => 3000000,
           ],
        ];
    }
}
