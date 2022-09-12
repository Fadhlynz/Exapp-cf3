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
        'code' => 'P1',
        'name' => 'Penyakit Hawar Daun',
        'det_penyakit' => 'Hawar daun Exserohilum turcicum (Pass.) Leonard et Suggs merupakan penyakit pada tanaman jagung
        yang disebabkan oleh jamur E. turcicum (Pass.) Leonard et Suggs',
        'srn_penyakit' => 'Solution Belum Tersedia',
        'images' => '1662959733.png',
        ]);
        Penyakit::create([
        'code' => 'P2',
        'name' => 'Penyakit Bulai',
        'det_penyakit' => 'Penyakit bulai merupakan penyakit utama pada tanaman jagung yang disebabkan oleh jamur
        Peronosclerospora Maydis. Perkembangan penyakit ini dimulai dengan infeksi konidia (spora jamur) yang jatuh di permukaan daun jagung. Konidia tersebut kemudian berkembang dan masuk ke dalam jaringan tanaman muda melalui stomata dan selanjutnya berkembang hingga ke titik tumbuh tanaman.',
        'srn_penyakit' => 'Solution Belum Tersedia',
        'images' => '1662961340.png',
        ]);
        Penyakit::create([
        'code' => 'P3',
        'name' => 'Penyakit Busuk Tongkol Fusarium',
        'det_penyakit' => 'Penyakit busuk tongkol Fusarium disebabkan oleh infeksi cendawan Fusarium moniliforme dan penyakit
        busuk batang jagung ini tersebar luas di Eropa, Amerika, Afrika, Australia, dan Asia.',
        'srn_penyakit' => 'Solution Belum Tersedia',
        'images' => '1662961206.png',
        ]);
        Penyakit::create([
        'code' => 'P4',
        'name' => 'Penyakit Karat Daun',
        'det_penyakit' => 'Penyakit karat adalah segolongan penyakit tumbuhan yang disebabkan oleh golongan cendawan (fungi)
        yang termasuk dalam bangsa (ordo) Pucciniales. Penyakit ini paling jelas gejalanya terlihat pada daun, sehingga
        disebut karat daun.',
        'srn_penyakit' => 'Solution Belum Tersedia',
        'images' => '1662961220.png',
        ]);
        Penyakit::create([
        'code' => 'P5',
        'name' => 'Penyakit Virus Mosaik Kerdil Jagung',
        'det_penyakit' => 'Penyakit ini merupakan penyakit virus jagung yang pertama dilaporkan di Indonesia. Penyebarannya sangat luas, meliputi hampir di semua negara penghasil jagung di dunia.',
        'srn_penyakit' => 'Solution Belum Tersedia',
        'images' => '1662961233.png',
        ]);
    }
}