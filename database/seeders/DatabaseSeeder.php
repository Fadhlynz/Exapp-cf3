<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Evidence;
use App\Models\Hypothesis;
use App\Models\Role;
use App\Models\Value;
use App\Models\Setting;
use App\Models\History;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        User::create([
            'name' => 'Seorang Admin',
            'email' => 'admin@mail.com',
            'password' => bcrypt('admin123'),
            'level' => 'admin',
        ]);

        User::create([
            'name' => 'Seorang User',
            'email' => 'user@mail.com',
            'password' => bcrypt('user123'),
            'level' => 'user',
        ]);

        Evidence::create([
            'code' => 'GH1',
            'name' => 'Bentuk daun berlubang-lubang atau rusak',
        ]);
        Evidence::create([
            'code' => 'GH2',
            'name' => 'Aktivitas hama ini hanya berlangsung pada musim hujan selama 1-2 bulan',
        ]);
        Evidence::create([
            'code' => 'GH3',
            'name' => 'Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang
            sehingga tanaman menjadi kuning dan akhirnya',
        ]);
        Evidence::create([
            'code' => 'GH4',
            'name' => 'Pertumbuhan terlambat, menguning, jaringan membusuk atau gejala sundep',
        ]);
        Evidence::create([
            'code' => 'GH5',
            'name' => 'Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.',
        ]);
        Evidence::create([
            'code' => 'GH6',
            'name' => 'Larva kecil merusak daun serta serentak bergerombol dengan meninggalkan sisa-sisa epidermis
            bagian atas, bahkan hanya menyisakan tulang daunnya saja',
        ]);
        Evidence::create([
            'code' => 'GH7',
            'name' => 'Biasanya larva berada di permukaan bawah daun',
        ]);
        Evidence::create([
            'code' => 'GH8',
            'name' => 'Umumnya hama muncul pada saat musim kemarau daun',
        ]);
        Evidence::create([
            'code' => 'GH9',
            'name' => 'Membuat lubang kecil pada daun',
        ]);
        Evidence::create([
            'code' => 'GH10',
            'name' => 'Membuat lubang gorokan pada batang, bunga jantan atau pangkal tongkol, sehingga batang tassel
            mudah patah',
        ]);
        Evidence::create([
        'code' => 'GH11',
        'name' => 'Terdapat kerusakan pada bagian tongkol',
        ]);
        Evidence::create([
        'code' => 'GH12',
        'name' => 'Larva yang baru menetas akan makan pada jambul tongkol, dan kemudian membuat lubang masuk ke
        tongkol.',
        ]);
        Evidence::create([
        'code' => 'GH13',
        'name' => 'Kotoran yang ditinggalkan larva menyebabkan bertumbuhnya jamur yang menghasilkan mikotoksin sehingga
        tongkol rusak.',
        ]);
        Evidence::create([
        'code' => 'GH14',
        'name' => 'Hama ini menyerang tanaman muda, terutama pada pucuk atau malai yang. Dapat mengakibatkan tidak
        terbentuknya bunga jantan, berkurangnya hasil dan bahkan tanaman dapat mati',
        ]);
        Evidence::create([
        'code' => 'GH15',
        'name' => 'Hama ini menyerang bagian daun terlebih dahulu, kemudian tulang daun dan batang',
        ]);
        Evidence::create([
        'code' => 'GH16',
        'name' => 'Menyerang mulai dari tepi daun',
        ]);
        Evidence::create([
        'code' => 'GH17',
        'name' => 'Hama ini dapat pula memakan batang dan tongkol jagung jika populasinya sangat tinggi dengan sumber
        makanan terbatas',
        ]);

        Hypothesis::create([
            'user_id' => 1,
            'code' => 'GH1',
            'name' => 'Hama Lalat Bibit',
            'description' => 'Hama lalat bibit ini merupakan serangga yang baru menetas dan biasanya menyerang dengan cara membuat atau melubangi batang tanaman jagung dan memakannya sampai ke dasar batang dari tanaman jagung itu sendiri.',
            'solution' => 'Solution Belum Tersedia'
        ]);
        Hypothesis::create([
            'user_id' => 2,
            'code' => 'GH2',
            'name' => 'Hama Ulat Grayak',
            'description' => 'Ulat grayak merupakan serangga ngengat asli daerah tropis yang sebelumnya hanya ditemukan pada pertanaman jagung di Amerika Serikat, Argentina, dan Afrika. Tahun 2018 FAW memasuki Benua Asia di kawasan India, Myanmar, dan Thailand. Maret 2019 dilaporkan merusak tanaman jagung dengan tingkat serangan berat di Kabupaten Pasaman Barat (Sumatera Barat), kemudian menyebar hampir di seluruh wilayah Indonesia. Sebagai jenis hama baru yang menyerang pertanaman jagung di Indonesia, keberadaan hama ulat grayak atau Spodoptera frugiperda ini dapat menjadi ancaman serius bagi para petani di Indonesia.',
            'solution' => 'Solution Belum Tersedia'
        ]);
        Hypothesis::create([
            'user_id' => 1,
            'code' => 'GH3',
            'name' => 'Hama Larva Penggerek Batang',
            'description' => 'Hama penggerek batang (Ostrinia funacalis) merupakan salah satu dari beberapa jenis hama yang menyerang tanaman jagung, menimbulkan kerusakan secara fisik dan mengakibatkan kerugian secara ekonomi sehingga memerlukan tindakan pengendalian.',
            'solution' => 'Solution Belum Tersedia'
        ]);
        Hypothesis::create([
            'user_id' => 2,
            'code' => 'GH4',
            'name' => 'Hama Penggerek Tongkol',
            'description' => 'Helicoverpa armigera merupakan serangga dari kelompok ngengat yang larvanya menjadi salah satu hama penting pada pertanaman kapas dan jagung.',
            'solution' => 'Solution Belum Tersedia'
        ]);
        Hypothesis::create([
            'user_id' => 1,
            'code' => 'GH5',
            'name' => 'Hama Belalang Kembara ',
            'description' => 'Belalang kembara adalah jenis belalang besar yang paling tersebar di dunia, dan merupakan satu-satunya spesies anggota marga Locusta. Serangga hama ini dapat dijumpai di seluruh Dunia Lama yang beriklim agak hangat, mulai dari Afrika, Asia, Australia, sampai Selandia Baru.',
            'solution' => 'Solution Belum Tersedia'
        ]);

        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  1,'value' => 0.4]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  2,'value' => 0.8]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  3,'value' => 0.8]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  4,'value' => 1.0]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  5,'value' => 0.6]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  6,'value' => 0]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  7,'value' => 0]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  8,'value' => 0]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  9,'value' => 0]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  10,'value' => 0]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  11,'value' => 0]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  12,'value' => 0]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  13,'value' => 0]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  14,'value' => 0]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  15,'value' => 0]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  16,'value' => 0]);
        Role::create(['hypothesis_id' => 1, 'evidence_id' =>  17,'value' => 0]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  1,'value' => 0.4]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  2,'value' => 0]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  3,'value' => 0]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  4,'value' => 0]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  5,'value' => 0]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  6,'value' => 0.8]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  7,'value' => 0.6]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  8,'value' => 0.4]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  9,'value' => 0]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  10,'value' => 0]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  11,'value' => 0]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  12,'value' => 0]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  13,'value' => 0]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  14,'value' => 0]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  15,'value' => 0]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  16,'value' => 0]);
        Role::create(['hypothesis_id' => 2, 'evidence_id' =>  17,'value' => 0]);
        Role::create(['hypothesis_id' => 3, 'evidence_id' =>  1,'value' => 0.4]);
        Role::create(['hypothesis_id' => 3, 'evidence_id' =>  2,'value' => 0]);
        Role::create(['hypothesis_id' => 3, 'evidence_id' =>  3,'value' => 0]);
        Role::create(['hypothesis_id' => 3, 'evidence_id' =>  4,'value' => 0]);
        Role::create(['hypothesis_id' => 3, 'evidence_id' =>  5,'value' => 0]);
        Role::create(['hypothesis_id' => 3, 'evidence_id' =>  6,'value' => 0]);
        Role::create(['hypothesis_id' => 3, 'evidence_id' =>  7,'value' => 0]);
        Role::create(['hypothesis_id' => 3, 'evidence_id' =>  8,'value' => 0]);
        Role::create(['hypothesis_id' => 3, 'evidence_id' =>  9,'value' => 0.8]);
        Role::create(['hypothesis_id' => 3, 'evidence_id' =>  10,'value' => 1.0]);
        Role::create(['hypothesis_id' => 4, 'evidence_id' =>  11,'value' => 0.4]);
        Role::create(['hypothesis_id' => 4, 'evidence_id' =>  12,'value' => 0.8]);
        Role::create(['hypothesis_id' => 4, 'evidence_id' =>  13,'value' => 1.0]);
        Role::create(['hypothesis_id' => 4, 'evidence_id' =>  14,'value' => 0.6]);
        Role::create(['hypothesis_id' => 4, 'evidence_id' =>  15,'value' => 0]);
        Role::create(['hypothesis_id' => 4, 'evidence_id' =>  16,'value' => 0]);
        Role::create(['hypothesis_id' => 4, 'evidence_id' =>  17,'value' => 0]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  1,'value' => 0.4]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  2,'value' => 0]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  3,'value' => 0]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  4,'value' => 0]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  5,'value' => 0]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  6,'value' => 0]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  7,'value' => 0]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  8,'value' => 0]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  9,'value' => 0]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  10,'value' => 0]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  11,'value' => 0]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  12,'value' => 0]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  13,'value' => 0]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  14,'value' => 0]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  15,'value' => 0.8]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  16,'value' => 0.8]);
        Role::create(['hypothesis_id' => 5, 'evidence_id' =>  17,'value' => 0.6]);

        Value::create(['name' => 'Sangat Yakin', 'value' => 1.0]);
        Value::create(['name' => 'Yakin', 'value' => 0.8]);
        Value::create(['name' => 'Cukup', 'value' => 0.6]);
        Value::create(['name' => 'Kurang Yakin', 'value' => 0.4]);
        Value::create(['name' => 'Tidak Yakin', 'value' => 0.2]);
        Value::create(['name' => 'Tidak Tahu', 'value' => 0.0]);

        Setting::create([
            'title' => 'Sistem Pakar Penyakit Manusia',
            'description' => '<p>Sistem pakar adalah sistem yang membantu para pakar untuk melakuakan diagnosa suatu penyakit apapun seperti penyakit pada manusia, hewan, tumbuhan dan makhluk hidup lainnya. dengan bantuan komputasi komputer untuk melakukan diagnosa berdasarkan ilmu atau pemahaman pakar.</p><p>Pada sistem pakar Exapp ini metode pakar yang digunakan untuk mendiagnosa adalah metode Ceratainty Factor. Ceratinty Factor atau faktor kepastian adalah salah satu metode sistem pakar untuk membuktikan apakah suatu fakta itu pasti ataukah tidak pasti yang berbentuk metric yang biasanya digunakan dalam sistem pakar.</p><p>Exapp memiliki kelebihan untuk menambakan jenis hipotesisi seperti penyakit dan evidence seperti gejala dan juga bisa digunakan untuk melakukan diagnosa apapun.</p>',
            'evidence_name' => 'Gejala',
            'hypothesis_name' => 'Penyakit',
            'input_type' => 'select'
        ]);

        History::create(['hypothesis_id' => 1, 'name' => 'Jonahtan', 'description' => 'A Patient', 'value' => 75.4]);
        History::create(['hypothesis_id' => 1, 'name' => 'Zeppeli', 'description' => 'A Patient', 'value' => 87.6]);
        History::create(['hypothesis_id' => 1, 'name' => 'Speedwagon', 'description' => 'A Patient', 'value' => 98.7]);
        History::create(['hypothesis_id' => 1, 'name' => 'Erina', 'description' => 'A Patient', 'value' => 96.8]);
        History::create(['hypothesis_id' => 1, 'name' => 'Joseph', 'description' => 'A Patient', 'value' => 98.6]);
        History::create(['hypothesis_id' => 1, 'name' => 'Cesar', 'description' => 'A Patient', 'value' => 90.7]);
        History::create(['hypothesis_id' => 1, 'name' => 'Lisa Lisa', 'description' => 'A Patient', 'value' => 76.65]);
        History::create(['hypothesis_id' => 1, 'name' => 'Jotaro', 'description' => 'A Patient', 'value' => 67.78]);
        History::create(['hypothesis_id' => 2, 'name' => 'Kakyoin', 'description' => 'A Patient', 'value' => 67.8]);
        History::create(['hypothesis_id' => 2, 'name' => 'Avdol', 'description' => 'A Patient', 'value' => 78.9]);
        History::create(['hypothesis_id' => 2, 'name' => 'Polnaref', 'description' => 'A Patient', 'value' => 79.7]);
        History::create(['hypothesis_id' => 2, 'name' => 'Josuke', 'description' => 'A Patient', 'value' => 87.56]);
        History::create(['hypothesis_id' => 2, 'name' => 'Okuyasu', 'description' => 'A Patient', 'value' => 56.67]);
        History::create(['hypothesis_id' => 2, 'name' => 'Koichi', 'description' => 'A Patient', 'value' => 76.89]);
        History::create(['hypothesis_id' => 2, 'name' => 'Rohan', 'description' => 'A Patient', 'value' => 87.65]);
        History::create(['hypothesis_id' => 2, 'name' => 'Giorno', 'description' => 'A Patient', 'value' => 98.76]);
        History::create(['hypothesis_id' => 2, 'name' => 'Bucalati', 'description' => 'A Patient', 'value' => 87.66]);
        History::create(['hypothesis_id' => 3, 'name' => 'Mista', 'description' => 'A Patient', 'value' => 99.65]);
        History::create(['hypothesis_id' => 3, 'name' => 'Abachiro', 'description' => 'A Patient', 'value' => 77.76]);
        History::create(['hypothesis_id' => 3, 'name' => 'Narancia', 'description' => 'A Patient', 'value' => 67.86]);
        History::create(['hypothesis_id' => 3, 'name' => 'Jolyne', 'description' => 'A Patient', 'value' => 100.78]);
        History::create(['hypothesis_id' => 3, 'name' => 'Ermes', 'description' => 'A Patient', 'value' => 87.65]);
        History::create(['hypothesis_id' => 4, 'name' => 'Foo Fighters', 'description' => 'A Patient', 'value' => 76.55]);
        History::create(['hypothesis_id' => 4, 'name' => 'Emporio', 'description' => 'A Patient', 'value' => 100.55]);
        History::create(['hypothesis_id' => 4, 'name' => 'Weather Report', 'description' => 'A Patient', 'value' => 65.88]);
        History::create(['hypothesis_id' => 4, 'name' => 'Dio', 'description' => 'A Patient', 'value' => 87.76]);
        History::create(['hypothesis_id' => 4, 'name' => 'Kars', 'description' => 'A Patient', 'value' => 100.65]);
        History::create(['hypothesis_id' => 4, 'name' => 'Kira', 'description' => 'A Patient', 'value' => 56.75]);
        History::create(['hypothesis_id' => 4, 'name' => 'Diavolo', 'description' => 'A Patient', 'value' => 87.56]);
        History::create(['hypothesis_id' => 4, 'name' => 'Pucci', 'description' => 'A Patient', 'value' => 67.88]);
    }
}