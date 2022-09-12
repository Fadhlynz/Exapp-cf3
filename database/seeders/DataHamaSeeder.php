<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Hama;

class DataHamaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Hama::create([
        'code' => 'H1',
        'name' => 'Hama Lalat Bibit',
        'det_hama' => 'Hama lalat bibit ini merupakan serangga yang baru menetas dan biasanya menyerang dengan cara membuat atau melubangi batang tanaman jagung dan memakannya sampai ke dasar batang dari tanaman jagung itu sendiri.',
        'srn_hama' => 'Solution Belum Tersedia',
        'images' => '1660404549.png',
        ]);
        Hama::create([
        'code' => 'H2',
        'name' => 'Hama Ulat Grayak',
        'det_hama' => 'Ulat grayak merupakan serangga ngengat asli daerah tropis yang sebelumnya hanya ditemukan pada pertanaman jagung di Amerika Serikat, Argentina, dan Afrika. Tahun 2018 FAW memasuki Benua Asia di kawasan India, Myanmar, dan Thailand. Maret 2019 dilaporkan merusak tanaman jagung dengan tingkat serangan berat di Kabupaten Pasaman Barat (Sumatera Barat), kemudian menyebar hampir di seluruh wilayah Indonesia. Sebagai jenis hama baru yang menyerang pertanaman jagung di Indonesia, keberadaan hama ulat grayak atau Spodoptera frugiperda ini dapat menjadi ancaman serius bagi para petani di Indonesia.',
        'srn_hama' => 'Solution Belum Tersedia',
        'images' => '1660404567.jpg',
        ]);
        Hama::create([
        'code' => 'H3',
        'name' => 'Hama Larva Penggerek Batang',
        'det_hama' => 'Hama penggerek batang (Ostrinia funacalis) merupakan salah satu dari beberapa jenis hama yang menyerang tanaman jagung, menimbulkan kerusakan secara fisik dan mengakibatkan kerugian secara ekonomi sehingga memerlukan tindakan pengendalian.',
        'srn_hama' => 'Solution Belum Tersedia',
        'images' => '1660404597.png',
        ]);
        Hama::create([
        'code' => 'H4',
        'name' => 'Hama Penggerek Tongkol',
        'det_hama' => 'Helicoverpa armigera merupakan serangga dari kelompok ngengat yang larvanya menjadi salah satu hama penting pada pertanaman kapas dan jagung.',
        'srn_hama' => 'Solution Belum Tersedia',
        'images' => '1660404676.png',
        ]);
        Hama::create([
        'code' => 'H5',
        'name' => 'Hama Belalang Kembara ',
        'det_hama' => 'Belalang kembara adalah jenis belalang besar yang paling tersebar di dunia, dan merupakan
        satu-satunya spesies anggota marga Locusta. Serangga hama ini dapat dijumpai di seluruh Dunia Lama yang beriklim agak hangat, mulai dari Afrika, Asia, Australia, sampai Selandia Baru.',
        'srn_hama' => 'Solution Belum Tersedia',
        'images' => '1660404689.png',
        ]);
    }
}