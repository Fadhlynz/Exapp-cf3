<?php

namespace App\Http\Controllers;

use App\Models\Gejalahama;
use App\Models\Hama;
use App\Models\Hasilhama;
use App\Models\Kondisihama;
use App\Models\Ruleshama;
use App\Models\Setting;
use App\Models\Value;
use Illuminate\Http\Request;

class DiagnosahamaController extends Controller
{
    public function diagnosa_hama() 
    {
        $gejalas = Gejalahama::all();
        $kondisihamas = Value::all();

        return view('diagnosa_hama',[
            'title' => 'Diagnosa Hama',
            'gejalas' => $gejalas,
            'kondisihamas' => $kondisihamas
        ]);
    }

    public function kalkulasi_cf($data)
    {
    $data_penyakit = [];
    $gejala_terpilih = [];
    foreach($data['diagnosa'] as $input) {
    if(!empty($input)) {
    $opts = explode('+', $input);
    $gejala = Gejalahama::with('penyakits')->find($opts[0]);
    dd($opts);
    die;
    }
  }

            }

    public function diagnosa(Request $request)
    {
    $data = $request->all();

    $result = $this->kalkulasi_cf($data);

    if($result['cf_max'] == null) {
    return back()->with('error', 'Terjadi sebuah kesalahan');
    }

    $riwayat = Hasilhama::create([
    'name' => $request->name,
    'description' => "Data Hama",
    'value' => serialize($result['hasil_diagnosa']),
    'cf_max' => serialize($result['cf_max']),
    'gejalahama' => serialize($result['gejala_terpilih'])
    ]);

    return redirect()->to(route('admin.riwayat', $riwayat->id));
    }

    // public function hasildiagnosa_hama(Request $request){

    //     $request->validate([
    //         'name' => 'required',
    //     ]); 

    //     $hypothesyes = Hama::all();
    //     $roles = Ruleshama::all();
    //     $evidences = Gejalahama::all();

    //     foreach ($hypothesyes as $hama) {
    //         $arhama[] = array(
    //             'id' => $hama->id,
    //             'code' => $hama->code,
    //             'name' => $hama->name,
    //             'det_hama' => $hama->det_hama,
    //             'srn_hama' => $hama->srn_hama,
    //             'images' => $hama->images,
    //         );
    //     }

    //     foreach ($evidences as $gejalahama) {
    //         $argejalahama[] = array(
    //             'id' => $gejalahama->id,
    //             'code' => $gejalahama->code,
    //             'name' => $gejalahama->name,
    //         );
    //     }

    //     // Get Data to Riwayat Hasil Diagnosa
    //     foreach ($hypothesyes as $hypothesis){
    //         $arrid = 0;
    //         $cf_old = 0;
    //          foreach ($roles as $key => $role){
    //             if ($hypothesis->id == $role->hama_id ){
    //                 $ard = $arrid++; 
    //                 if ($request->evidance_value[$ard] != 0){
    //                     $role->gejahalama_id;

    //                     // Data Gejala
    //                     $datagejalahama[] = array(
    //                         'gejala' => $role->gejalahama_id,
    //                     );
    //                     // Data Kondisi
    //                     $datakondisihama[] = array(
    //                       'cf_pakar' => $role->value,
    //                         'cf_user' => $request->evidance_value[$ard],
    //                     );
                        
    //                   }
    //                 }
    //         }
    //     }
    //     foreach($roles as $sd => $rule){
    //       $arrid = 0;
    //        $ard = $arrid++;
    //          if ($request->evidance_value[$ard] != 0){
    //          $rule->gejahalama_id;

    //          // Data Gejala
    //          $gejalas[] = array(
    //          'gejalas' => $rule->gejalahama_id,
    //          );
    //         }
    //       }
    //       dd($gejalas);
    //     die;

    //     // Get Data to Hasil Diagnosa
    //     foreach ($hypothesyes as $hypothesis){
    //         $arrid = 0;
    //         $cf_old = 0;
    //         foreach ($roles as $key => $role){
    //             if ($hypothesis->id == $role->hama_id ){
    //                 $ard = $arrid++; 
    //                 if ($request->evidance_value[$ard] != 0){
    //                     $role->gejalahama_id; 
    //                     $cfhe = $role->value * $request->evidance_value[$ard];
    //                     $cf_old === 1 ? $cfhe : $cf_old = $cf_old + $cfhe * (1- $cf_old);
    //                 }
    //             }
                
    //         }
    //         $menu[] = array(
    //             'id' => $hypothesis->id,
    //             'nama' => $hypothesis->name,
    //             'hsl' => number_format($cf_old * 100,2, '.', ''),
    //             'slsi' => $hypothesis->srn_hama,
    //             'img' => $hypothesis->images,
    //         ); 
    //     }

    //     $b = 0;
    //     foreach ($menu as $index => $record) {
    //         if ($record['hsl'] > $b) { 
    //             $a = $record['id'];
    //             $b = $record['hsl']; 
    //             $c = $record['nama'];
    //             $d = $record['slsi'];
    //             $e = $record['img'];
    //         }
    //     }

    //     if($b == 0){
    //         return redirect()->back()->with('status', 'At least fill in one of the following!');
    //     }

    //     $inhama = serialize(($menu));
    //     $ingejalahama = serialize($datagejalahama);
    //     $inkondisihama = serialize($datakondisihama);

    //     Hasilhama::create([
    //         'hama_id' => $a,
    //         'name' => $request->name,
    //         'description' => "Data Hama",
    //         'hama' => $inhama,
    //         'gejalahama' => $ingejalahama,
    //         'kondisihama' => $inkondisihama,
    //         'value' => $b,
    //     ]);

    //     return view('hasildiagnosa_hama',[
    //         'title' => 'Diagnosa Hama',
    //         'hypothesyes' => $hypothesyes,
    //         'roles' => $roles,
    //         'evidences' => $evidences,
    //         'request' => $request
    //         ]
    //     );
    // }
}
