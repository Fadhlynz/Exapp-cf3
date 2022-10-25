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
        'user_id' => 1,
        'code' => 'H1',
        'name' => 'Hama Lalat Bibit',
        'det_hama' => 'Hama lalat bibit ini merupakan serangga yang baru menetas dan biasanya menyerang dengan cara membuat atau melubangi batang tanaman jagung dan memakannya sampai ke dasar batang dari tanaman jagung itu sendiri.',
        'srn_hama' => 'Pengendalian secara kimiawi menggunakan insektisida karbofuran saat tanam atau diberikan pada kuncup daun pada umur tanaman satu minggu dengan dosis 0,24 kg bahan aktif/ha. Pengendalian dengan insektisida dapat dilakukan dengan perlakuan benih, yaitu Thiodikarb dengan dosis 7,5-15 g b.a. (bahan aktif)/ kg benih atau karbofuran dengan dosis 6 g b.a./ kg benih. Selanjutnya setelah tanaman berumur 5-7 hari, disemprot dengan karbosulfan dengan dosis 0,2 kg b.a. penggunaan insektisida hanya dianjurkan di daerah endemik.',
        'images' => '1666678186.png',
        ]);
        Hama::create([
        'user_id' => 2,
        'code' => 'H2',
        'name' => 'Hama Ulat Grayak',
        'det_hama' => 'Ulat grayak merupakan serangga ngengat asli daerah tropis yang sebelumnya hanya ditemukan pada pertanaman jagung di Amerika Serikat, Argentina, dan Afrika. Tahun 2018 FAW memasuki Benua Asia di kawasan India, Myanmar, dan Thailand. Maret 2019 dilaporkan merusak tanaman jagung dengan tingkat serangan berat di Kabupaten Pasaman Barat (Sumatera Barat), kemudian menyebar hampir di seluruh wilayah Indonesia. Sebagai jenis hama baru yang menyerang pertanaman jagung di Indonesia, keberadaan hama ulat grayak atau Spodoptera frugiperda ini dapat menjadi ancaman serius bagi para petani di Indonesia.',
        'srn_hama' => 'Mengumpulkan larva atau pupa dan bagian tanaman yang terserang kemudian memusnahkannya lalu penggunaan perangkap feromonoid seks untuk ngengat sebanyak 40 buah per hektar atau 2 buah per 500 m2 dipasang di tengah tanaman sejak tanaman berumur 2 minggu.',
        'images' => '1660404567.jpg',
        ]);
        Hama::create([
        'user_id' => 1,
        'code' => 'H3',
        'name' => 'Hama Larva Penggerek Batang',
        'det_hama' => 'Hama penggerek batang (Ostrinia funacalis) merupakan salah satu dari beberapa jenis hama yang menyerang tanaman jagung, menimbulkan kerusakan secara fisik dan mengakibatkan kerugian secara ekonomi sehingga memerlukan tindakan pengendalian.',
        'srn_hama' => 'Pengendalian kimiawi dengan insektisida berbahan aktif lamda sihalotrin, klopirfos, dan
        sipermetrin. Insektisida cair efektif pada fase telur dan larva instar 1-3 sebelum larva masuk ke dalam batang. Insektisida granul diaplikasikan melalui akar efektif pada semua stadium.',
        'images' => '1663384944.png',
        ]);
        Hama::create([
        'user_id' => 2,
        'code' => 'H4',
        'name' => 'Hama Penggerek Tongkol',
        'det_hama' => 'Helicoverpa armigera merupakan serangga dari kelompok ngengat yang larvanya menjadi salah satu hama penting pada pertanaman kapas dan jagung.',
        'srn_hama' => 'Penggunaan insektisida yang berbahan aktifdimehipo, monokrotofos, karbofuran, dll efektif menekan serangan penggerek tongkol jagung. Aplikasi insektisida dianjurkan apabila telah ditemukan satu kelompok telur per 30 tanaman. Insektisida cair atau semprotan hanya efektif pada fase telur dan larva instrar I-III, sebelum larva masuk ke dalam tongkol.',
        'images' => '1660404676.png',
        ]);
        Hama::create([
        'user_id' => 1,
        'code' => 'H5',
        'name' => 'Hama Belalang Kembara ',
        'det_hama' => 'Belalang kembara adalah jenis belalang besar yang paling tersebar di dunia, dan merupakan
        satu-satunya spesies anggota marga Locusta. Serangga hama ini dapat dijumpai di seluruh Dunia Lama yang beriklim agak hangat, mulai dari Afrika, Asia, Australia, sampai Selandia Baru.',
        'srn_hama' => 'Pengendalian hama belalang pada budidaya jagung secara kimiawi bisa dilakukan penyemprotan insektisida berbahan aktif profenofos, klorpirifos, sipermetrin, betasiflutrin atau lamdasihalortrin. Dosis/konsentrasi sesuai petunjuk di kemasan.',
        'images' => '1660404689.png',
        ]);
    }
}
