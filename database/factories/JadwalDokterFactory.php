<?php

namespace Database\Factories;

class JadwalDokterFactory
{

    public static function data(): array
    {
        return [
            [
             'kd_jadwal' => 'A0001',
             'hari' => 'Senin',
             'shift' => 'Pagi',
             'kd_dokter' => 'D0001',
            ],
            [
             'kd_jadwal' => 'A0002',
             'hari' => 'Senin',
             'shift' => 'Sore',
             'kd_dokter' => 'D0002',
            ],
            [
             'kd_jadwal' => 'B0001',
             'hari' => 'Selasa',
             'shift' => 'Pagi',
             'kd_dokter' => 'D0004',
            ],
            [
             'kd_jadwal' => 'B0002',
             'hari' => 'Selasa',
             'shift' => 'Sore',
             'kd_dokter' => 'D0003',
            ],
            [
             'kd_jadwal' => 'C0001',
             'hari' => 'Rabu',
             'shift' => 'Pagi',
             'kd_dokter' => 'D0001',
            ],
            [
             'kd_jadwal' => 'C0002',
             'hari' => 'Rabu',
             'shift' => 'Sore',
             'kd_dokter' => 'D0005',
            ],
            [
             'kd_jadwal' => 'D0001',
             'hari' => 'Kamis',
             'shift' => 'Pagi',
             'kd_dokter' => 'D0003',
            ],
            [
             'kd_jadwal' => 'D0002',
             'hari' => 'Kamis',
             'shift' => 'Sore',
             'kd_dokter' => 'D0002',
            ],
            [
             'kd_jadwal' => 'E0001',
             'hari' => 'Jum’at',
             'shift' => 'Pagi',
             'kd_dokter' => 'D0004',
            ],
            [
             'kd_jadwal' => 'E0002',
             'hari' => 'Jum’at',
             'shift' => 'Sore',
             'kd_dokter' => 'D0001',
            ],
            [
             'kd_jadwal' => 'F0001',
             'hari' => 'Sabtu',
             'shift' => 'Pagi',
             'kd_dokter' => 'D0003',
            ],
        ];
    }
}
