<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Gejalahama;

class GejalaHamaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      Gejalahama::create([
      'code' => 'GH01',
      'name' => 'Bentuk daun berlubang-lubang atau rusak',
      ]);
      Gejalahama::create([
      'code' => 'GH02',
      'name' => 'Aktivitas hama ini hanya berlangsung pada musim hujan selama 1-2 bulan',
      ]);
      Gejalahama::create([
      'code' => 'GH03',
      'name' => 'Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang
      sehingga tanaman menjadi kuning dan akhirnya',
      ]);
      Gejalahama::create([
      'code' => 'GH04',
      'name' => 'Pertumbuhan terlambat, menguning, jaringan membusuk atau gejala sundep',
      ]);
      Gejalahama::create([
      'code' => 'GH05',
      'name' => 'Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.',
      ]);
      Gejalahama::create([
      'code' => 'GH06',
      'name' => 'Larva kecil merusak daun serta serentak bergerombol dengan meninggalkan sisa-sisa epidermis
      bagian atas, bahkan hanya menyisakan tulang daunnya saja',
      ]);
      Gejalahama::create([
      'code' => 'GH07',
      'name' => 'Biasanya larva berada di permukaan bawah daun',
      ]);
      Gejalahama::create([
      'code' => 'GH08',
      'name' => 'Umumnya hama muncul pada saat musim kemarau daun',
      ]);
      Gejalahama::create([
      'code' => 'GH09',
      'name' => 'Membuat lubang kecil pada daun',
      ]);
      Gejalahama::create([
      'code' => 'GH10',
      'name' => 'Membuat lubang gorokan pada batang, bunga jantan atau pangkal tongkol, sehingga batang tassel
      mudah patah',
      ]);
      Gejalahama::create([
      'code' => 'GH11',
      'name' => 'Terdapat kerusakan pada bagian tongkol',
      ]);
      Gejalahama::create([
      'code' => 'GH12',
      'name' => 'Larva yang baru menetas akan makan pada jambul tongkol, dan kemudian membuat lubang masuk ke
      tongkol.',
      ]);
      Gejalahama::create([
      'code' => 'GH13',
      'name' => 'Kotoran yang ditinggalkan larva menyebabkan bertumbuhnya jamur yang menghasilkan mikotoksin sehingga
      tongkol rusak.',
      ]);
      Gejalahama::create([
      'code' => 'GH14',
      'name' => 'Hama ini menyerang tanaman muda, terutama pada pucuk atau malai yang. Dapat mengakibatkan tidak
      terbentuknya bunga jantan, berkurangnya hasil dan bahkan tanaman dapat mati',
      ]);
      Gejalahama::create([
      'code' => 'GH15',
      'name' => 'Hama ini menyerang bagian daun terlebih dahulu, kemudian tulang daun dan batang',
      ]);
      Gejalahama::create([
      'code' => 'GH16',
      'name' => 'Menyerang mulai dari tepi daun',
      ]);
      Gejalahama::create([
      'code' => 'GH17',
      'name' => 'Hama ini dapat pula memakan batang dan tongkol jagung jika populasinya sangat tinggi dengan sumber
      makanan terbatas',
      ]);
    }
}