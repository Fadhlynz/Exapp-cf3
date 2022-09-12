<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Value;
use App\Models\Setting;


class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
        DataHamaSeeder::class,
        DataPenyakitSeeder::class,
        GejalaHamaSeeder::class,
        GejalaPenyakitSeeder::class,
        RulesHamaSeeder::class,
        RulesPenyakitSeeder::class,
        ]);

      // \App\Models\User::factory(10)->create();
        User::create([
            'name' => 'Fadli',
            'email' => 'admin@mail.com',
            'password' => bcrypt('admin123'),
            'level' => 'admin',
        ]);

        User::create([
            'name' => 'User',
            'email' => 'user@mail.com',
            'password' => bcrypt('user123'),
            'level' => 'user',
        ]);

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

        // History::create(['hypothesis_id' => 1, 'name' => 'Jonahtan', 'description' => 'A Patient', 'value' => 75.4]);
        // History::create(['hypothesis_id' => 1, 'name' => 'Zeppeli', 'description' => 'A Patient', 'value' => 87.6]);
        // History::create(['hypothesis_id' => 1, 'name' => 'Speedwagon', 'description' => 'A Patient', 'value' => 98.7]);
        // History::create(['hypothesis_id' => 1, 'name' => 'Erina', 'description' => 'A Patient', 'value' => 96.8]);
        // History::create(['hypothesis_id' => 1, 'name' => 'Joseph', 'description' => 'A Patient', 'value' => 98.6]);
        // History::create(['hypothesis_id' => 1, 'name' => 'Cesar', 'description' => 'A Patient', 'value' => 90.7]);
        // History::create(['hypothesis_id' => 1, 'name' => 'Lisa Lisa', 'description' => 'A Patient', 'value' => 76.65]);
        // History::create(['hypothesis_id' => 1, 'name' => 'Jotaro', 'description' => 'A Patient', 'value' => 67.78]);
        // History::create(['hypothesis_id' => 2, 'name' => 'Kakyoin', 'description' => 'A Patient', 'value' => 67.8]);
        // History::create(['hypothesis_id' => 2, 'name' => 'Avdol', 'description' => 'A Patient', 'value' => 78.9]);
        // History::create(['hypothesis_id' => 2, 'name' => 'Polnaref', 'description' => 'A Patient', 'value' => 79.7]);
        // History::create(['hypothesis_id' => 2, 'name' => 'Josuke', 'description' => 'A Patient', 'value' => 87.56]);
        // History::create(['hypothesis_id' => 2, 'name' => 'Okuyasu', 'description' => 'A Patient', 'value' => 56.67]);
        // History::create(['hypothesis_id' => 2, 'name' => 'Koichi', 'description' => 'A Patient', 'value' => 76.89]);
        // History::create(['hypothesis_id' => 2, 'name' => 'Rohan', 'description' => 'A Patient', 'value' => 87.65]);
        // History::create(['hypothesis_id' => 2, 'name' => 'Giorno', 'description' => 'A Patient', 'value' => 98.76]);
        // History::create(['hypothesis_id' => 2, 'name' => 'Bucalati', 'description' => 'A Patient', 'value' => 87.66]);
        // History::create(['hypothesis_id' => 3, 'name' => 'Mista', 'description' => 'A Patient', 'value' => 99.65]);
        // History::create(['hypothesis_id' => 3, 'name' => 'Abachiro', 'description' => 'A Patient', 'value' => 77.76]);
        // History::create(['hypothesis_id' => 3, 'name' => 'Narancia', 'description' => 'A Patient', 'value' => 67.86]);
        // History::create(['hypothesis_id' => 3, 'name' => 'Jolyne', 'description' => 'A Patient', 'value' => 100.78]);
        // History::create(['hypothesis_id' => 3, 'name' => 'Ermes', 'description' => 'A Patient', 'value' => 87.65]);
        // History::create(['hypothesis_id' => 4, 'name' => 'Foo Fighters', 'description' => 'A Patient', 'value' => 76.55]);
        // History::create(['hypothesis_id' => 4, 'name' => 'Emporio', 'description' => 'A Patient', 'value' => 100.55]);
        // History::create(['hypothesis_id' => 4, 'name' => 'Weather Report', 'description' => 'A Patient', 'value' => 65.88]);
        // History::create(['hypothesis_id' => 4, 'name' => 'Dio', 'description' => 'A Patient', 'value' => 87.76]);
        // History::create(['hypothesis_id' => 4, 'name' => 'Kars', 'description' => 'A Patient', 'value' => 100.65]);
        // History::create(['hypothesis_id' => 4, 'name' => 'Kira', 'description' => 'A Patient', 'value' => 56.75]);
        // History::create(['hypothesis_id' => 4, 'name' => 'Diavolo', 'description' => 'A Patient', 'value' => 87.56]);
        // History::create(['hypothesis_id' => 4, 'name' => 'Pucci', 'description' => 'A Patient', 'value' => 67.88]);
    }
}
