<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Gejalapenyakit;

class GejalaPenyakitSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Gejalapenyakit::create([
        'code' => 'GP01',
        'name' => 'Terdapat bercak-bercak pada daun',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP02',
        'name' => 'Gejala awalnya muncul bercak-bercak kecil, jorong, hijau tua/hijau kelabu kebasahan yang kemudian menjadi coklat kehijauan.',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP03',
        'name' => 'Bercak mempunyai bentuk yang khas, berupa kumparan atau perahu, dengan lebar bercak 1-2 cm dan panjang 5-10 cm, tetapi lebar dapat mencapai 5 cm dan panjang 15 cm.',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP04',
        'name' => 'Spora banyak terbentuk pada kedua sisi bercak pada kondisi banyak embun atau setelah turun hujan, yang menyebabkan bercak berwarna hijau tua beledu, yang makin ke tepi warnanya makin muda.',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP05',
        'name' => 'Beberapa bercak dapat bersatu membentuk bercak yang lebih besar sehingga dapat mematikan jaringan
        daun',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP06',
        'name' => 'Warna daun menjadi memudar',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP07',
        'name' => 'Gejala daun yang terinfeksi berwarna khlorotik, biasanya memanjang sejajar tulang daun, dengan batas yang jelas, dan bagian daun yang masih sehat berwarna hijau normal',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP08',
        'name' => 'Warna putih seperti tepung pada permukaan bawah maupun atas bagian daun yang berwarna khlorotik, tampak dengan jelas pada pagi hari.',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP09',
        'name' => 'Daun yang khlorotik sistemik menjadi sempit dan kaku.',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP10',
        'name' => 'Tanaman menjadi terhambat pertumbuhannya dan pembentukan tongkol terganggu sampai tidak bertongkol sama sekali.',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP11',
        'name' => 'Tanaman yang terinfeksi sistemik sejak muda di bawah umur 1 bulan biasanya mati.',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP12',
        'name' => 'Daun menjadi kering',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP13',
        'name' => 'Tanaman jagung tampak layu atau seluruh daun mengering. Gejala ini umumnya terjadi pada stadia generatif, yaitu setelah fase pembungaan',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP14',
        'name' => 'Pangkal batang yang terinfeksi berubah warna dari hijau menjadi kecoklatan, bagian dalam busuk, sehingga mudah rebah, dan bagian kulit luarnya tipis.',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP15',
        'name' => 'Pada pangkal batang yang terinfeksi tersebut terlihat warna merah jambu, merah kecoklatan atau coklat',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP16',
        'name' => 'Terbentuk bisul pada kedua permukaan daun bagian atas dan bawah',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP17',
        'name' => 'Bisul berwarna coklat kemerahan tersebar pada permukaan daun dan berubah warna menjadi hitam kecoklatan setelah teliospora berkembang',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP18',
        'name' => 'Pada saat terjadi penularan berat, daun menjadi kering.',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP19',
        'name' => 'Gejala jelas tampak pada daun muda, terutama pada daun yang baru membuka sebagian, berupa mosaik atau adanya warna-warna hijau muda dan tua.',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP20',
        'name' => 'Terdapat warna hijau muda atau kekuning-kuningan biasanya memanjang sejajar dengan tulang daun',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP21',
        'name' => 'Tanaman terinfeksi sedikit mengalami hambatan pertumbuhan (stunting) dan ukuran tongkol serta jumlah biji berkurang.',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP22',
        'name' => 'Gejala yang semula jelas pada daun muda, dapat menjadi tidak jelas setelah daun menjadi lebih tua terutama pada suhu tinggi.',
        ]);
        Gejalapenyakit::create([
        'code' => 'GP23',
        'name' => 'Gejala dapat mulai tampak pada umur tanaman 15 hari setelah berkecambah.',
        ]);
    }
}