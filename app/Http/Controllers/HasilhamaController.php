<?php

namespace App\Http\Controllers;

use App\Models\Gejalahama;
use App\Models\Hama;
use App\Models\Hasilhama;
use App\Models\Ruleshama;
use Illuminate\Http\Request;

class HasilhamaController extends Controller
{
    public function index()
    {
         return view('riwayatdiagnosa.hama',[
            'title' => 'Riwayat Diagnosa Hama',
            'histores' => Hasilhama::orderby('id','desc')->get(),
            'hypotesis' => Hama::all(),
            'history' => Hasilhama::all(), 
        ]);
    } 

     public function hasildiagnosa_hama($id)
     {
        $hasilhamas = Hasilhama::all();

        foreach($hasilhamas as $hasilhama)
        {
           $hypothesyes = unserialize($hasilhama->hama);
        }

        foreach($hasilhamas as $gejalahama)
        {
           $evidences = unserialize($gejalahama->gejalahama);
        }
       
        foreach($hasilhamas as $kondisihama)
        {
           $kondisi = unserialize($kondisihama->kondisihama);
        }

        return view('riwayatdiagnosa.hasil_hama',[
            'title' => 'Hasil Diagnosa Hama',
            'hasilhama' => Hasilhama::find($id),
            'hypothesyes' => $hypothesyes,
            'evidences' => $evidences,
            'kondisi' => $kondisi
        ]);
    }

    public function destroy($id)
    {
      Hasilhama::where('id',$id)->delete();
      return redirect()->route('riwayatdiagnosa-hama')->with('status', 'Data Berhasil Dihapus!');
    }
}
