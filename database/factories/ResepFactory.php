<?php

namespace Database\Factories;

class ResepFactory
{

    public static function data(): array
    {
        return [
            [
                'hari' => 'Senin',
                'tanggal' => '2015/11/2',
                'kd_pasien' => 'P0001',
                'kd_penyakit' => 'K0001',
                'kd_obat' => 'M0001',
                'kd_dokter' => 'D0001',
            ],
            [
                'hari' => 'Senin',
                'tanggal' => '2015/11/2',
                'kd_pasien' => 'P0002',
                'kd_penyakit' => 'K0001',
                'kd_obat' => 'M0001',
                'kd_dokter' => 'D0002',
            ],
            [
                'hari' => 'Senin',
                'tanggal' => '2015/11/2',
                'kd_pasien' => 'P0010',
                'kd_penyakit' => 'K0001',
                'kd_obat' => 'M0001',
                'kd_dokter' => 'D0002',
            ],
            [
                'hari' => 'Selasa',
                'tanggal' => '2021/02/15',
                'kd_pasien' => 'P0008',
                'kd_penyakit' => 'K0009',
                'kd_obat' => 'M0001',
                'kd_dokter' => 'D0003',
            ],
            [
                'hari' => 'Selasa',
                'tanggal' => '2015/02/15',
                'kd_pasien' => 'P0008',
                'kd_penyakit' => 'K0007',
                'kd_obat' => 'M0003',
                'kd_dokter' => 'D0003',
            ],
            [
                'hari' => 'Rabu',
                'tanggal' => '2021/02/16',
                'kd_pasien' => 'P0004',
                'kd_penyakit' => 'K0003',
                'kd_obat' => 'M0001',
                'kd_dokter' => 'D0001',
            ],
            [
                'hari' => 'Rabu',
                'tanggal' => '2015/02/16',
                'kd_pasien' => 'P0003',
                'kd_penyakit' => 'K0005',
                'kd_obat' => 'M0003',
                'kd_dokter' => 'D0005',
            ],
            [
                'hari' => 'Kamis',
                'tanggal' => '2015/02/17',
                'kd_pasien' => 'P0005',
                'kd_penyakit' => 'K0006',
                'kd_obat' => 'M0002',
                'kd_dokter' => 'D0003',
            ],
            [
                'hari' => 'Jum’at',
                'tanggal' => '2015/02/18',
                'kd_pasien' => 'P0001',
                'kd_penyakit' => 'K0006',
                'kd_obat' => 'M0002',
                'kd_dokter' => 'D0004',
            ],
            [
                'hari' => 'Sabtu',
                'tanggal' => '2015/02/19',
                'kd_pasien' => 'P0005',
                'kd_penyakit' => 'K0002',
                'kd_obat' => 'M0006',
                'kd_dokter' => 'D0003',
            ],
        ];
    }
}
