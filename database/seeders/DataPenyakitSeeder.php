<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Penyakit;

class DataPenyakitSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Penyakit::create([
        'user_id' => 1,
        'code' => 'P1',
        'name' => 'Penyakit Hawar Daun',
        'det_penyakit' => 'Hawar daun Exserohilum turcicum (Pass.) Leonard et Suggs merupakan penyakit pada tanaman jagung
        yang disebabkan oleh jamur E. turcicum (Pass.) Leonard et Suggs',
        'srn_penyakit' => 'Menanam varietas tahan hawar seperti Kalingga, Arjuna, dan Hibrida Cl. Perlu diketahui, varietas jagung manis relatif lebih peka terhadap penyakit hawar daun. Kemudian Menanam jagung pada awal hingga akhir musim kemarau secara serempak. Lalu menggunakan fungisida sistemik.',
        'images' => '1662959733.png',
        ]);
        Penyakit::create([
        'user_id' => 1,
        'code' => 'P2',
        'name' => 'Penyakit Bulai',
        'det_penyakit' => 'Penyakit bulai merupakan penyakit utama pada tanaman jagung yang disebabkan oleh jamur
        Peronosclerospora Maydis. Perkembangan penyakit ini dimulai dengan infeksi konidia (spora jamur) yang jatuh di permukaan daun jagung. Konidia tersebut kemudian berkembang dan masuk ke dalam jaringan tanaman muda melalui stomata dan selanjutnya berkembang hingga ke titik tumbuh tanaman.',
        'srn_penyakit' => 'Sanitasi lahan dari sisa-sisa pertanaman dan sisa-sisa sumber penyakit kemudian melakukan seed treatment dengan zat pengatur tumbuh/PGPR, Paenibacillus polimyxa, fungisida metalaksil dengan dosis 2 gram (0,7g bahan aktif) per kg benih.',
        'images' => '1662961340.png',
        ]);
        Penyakit::create([
        'user_id' => 1,
        'code' => 'P3',
        'name' => 'Penyakit Busuk Tongkol Fusarium',
        'det_penyakit' => 'Penyakit busuk tongkol Fusarium disebabkan oleh infeksi cendawan Fusarium moniliforme dan penyakit
        busuk batang jagung ini tersebar luas di Eropa, Amerika, Afrika, Australia, dan Asia.',
        'srn_penyakit' => 'Pengendalian Hayati: Larutan berbasis bakteri Pseudomonas fluorescens dapat digunakan sebagai perlakuan benih dan sebagai semprotan untuk mengurangi timbulnya penyakit, dan produksi racun.
        Pengendalian Kimiawi: Selalu pertimbangkan pendekatan terpadu berupa tindakan pencegahan bersama dengan
        perlakuan hayati jika tersedia. Fungisida yang diberikan awal musim dapat membatasi infeksi tongkol. Karena kerusakan terjadi di tongkol, fungisida bukan cara paling efektif untuk melawan penyakit ini. Pertimbangkan untuk mengendalikan hama serangga yang melukai tongkol dan mendukung pertumbuhan jamur. Produk yang mengandung propikonazol 1 ml / I dapat digunakan pada tahap pengerasan biji untuk mengendalikan jamur.',
        'images' => '1662961206.png',
        ]);
        Penyakit::create([
        'user_id' => 1,
        'code' => 'P4',
        'name' => 'Penyakit Karat Daun',
        'det_penyakit' => 'Penyakit karat adalah segolongan penyakit tumbuhan yang disebabkan oleh golongan cendawan (fungi) yang termasuk dalam bangsa (ordo) Pucciniales. Penyakit ini paling jelas gejalanya terlihat pada daun, sehingga disebut karat daun.',
        'srn_penyakit' => 'Pengendalian Kimiawi: Selalu pertimbangkan pendekatan terpadu dengan tindakan pencegahan bersama dengan perlakuan hayati jika tersedia. Penyemprotan fungisida dapat bermanfaat jika digunakan pada varietas yang rentan. Berikan fungisida daun pada awal musim jika karat menyebar dengan cepat karena kondisi cuaca. Banyak jenis fungisida yang tersedia untuk pengendalian karat. Produk-produk yang mengandung mankozeb, piraklostrobin, piraklostrobin + metkonazol, piraklostrobin fluksapiroksad, azoksistrobin + propikonazol, trifloksistrobin + protiokonazol dapat digunakan untuk mengendalikan penyakit ini. Contoh perlakuannya dapat berupa penyemprotan mankozeb @ 2,5 g/l segera setelah bintil-bintil muncul dan ulangi dalam selang 10 hari hingga tahap berbunga.',
        'images' => '1662961220.png',
        ]);
        Penyakit::create([
        'user_id' => 1,
        'code' => 'P5',
        'name' => 'Penyakit Virus Mosaik Kerdil Jagung',
        'det_penyakit' => 'Penyakit ini merupakan penyakit virus jagung yang pertama dilaporkan di Indonesia. Penyebarannya sangat luas, meliputi hampir di semua negara penghasil jagung di dunia.',
        'srn_penyakit' => '• Mencabut tanaman yang terinfeksi seawal mungkin agar tidak menjadi sumber infeksi bagi tanaman sekitarnya ataupun pertanaman yang akan datang
        • Mengadakan pergiliran tanaman, tidak menanam jagung terus menerus di lahan yang sama
        • Penggunaan peptisida apabila di lapangan populasi vektor cukup tinggi
        • Tidak penggunakan benih yang berasal dari tanaman yang terinfeksi.',
        'images' => '1662961233.png',
        ]);
    }
}
