<?php

namespace Database\Factories;

class PasienFactory
{

    public static function data(): array
    {
        return [
            [
             'kd_pasien' => 'P0001',
             'nama' => 'Risa',
             'alamat' => 'Jakarta',
             'gender' => 'P',
             'periksa' => 1,
            ],
            [
             'kd_pasien' => 'P0002',
             'nama' => 'Janu',
             'alamat' => 'Surabaya',
             'gender' => 'L',
             'periksa' => 2,
            ],
            [
             'kd_pasien' => 'P0003',
             'nama' => 'Reva',
             'alamat' => 'Yogyakarta',
             'gender' => 'P',
             'periksa' => 4,
            ],
            [
             'kd_pasien' => 'P0004',
             'nama' => 'Didi',
             'alamat' => 'Surakarta',
             'gender' => 'L',
             'periksa' => 3,
            ],
            [
             'kd_pasien' => 'P0005',
             'nama' => 'Lativa',
             'alamat' => 'Purwokerto',
             'gender' => 'P',
             'periksa' => 1,
            ],
            [
             'kd_pasien' => 'P0006',
             'nama' => 'Fanie',
             'alamat' => 'Cilacap',
             'gender' => 'L',
             'periksa' => 2,
            ],
            [
             'kd_pasien' => 'P0007',
             'nama' => 'Putri',
             'alamat' => 'Yogyakarta',
             'gender' => 'P',
             'periksa' => 5,
            ],
            [
             'kd_pasien' => 'P0008',
             'nama' => 'Randi',
             'alamat' => 'Jakarta',
             'gender' => 'L',
             'periksa' => 3,
            ],
            [
             'kd_pasien' => 'P0009',
             'nama' => 'Daffa',
             'alamat' => 'Semarang',
             'gender' => 'L',
             'periksa' => 2,
            ],
            [
             'kd_pasien' => 'P0010',
             'nama' => 'Vika',
             'alamat' => 'Bandung',
             'gender' => 'P',
             'periksa' => 4,
            ],
        ];
    }
}
