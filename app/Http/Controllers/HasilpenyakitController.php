<?php

namespace App\Http\Controllers;

use App\Models\Hasilpenyakit;
use App\Models\Penyakit;
use Illuminate\Http\Request;

class HasilpenyakitController extends Controller
{
      public function index()
      {
      $riwayat = Hasilpenyakit::with('penyakit') 
      ->latest()
      ->paginate(10);
      return view('riwayatdiagnosa.penyakit', [
      'title' => 'Riwayat Diagnosa penyakit',
      'riwayats' => $riwayat,
      ]);
      } 

      public function show($id)
      {
      return view('riwayatdiagnosa.hasil_penyakit', [
      'title' => 'Riwayat Hasil Diagnosa Penyakit',
      'riwayat' => Hasilpenyakit::find($id)
      ]);
      }

      public function destroy($id)
      {
      Hasilpenyakit::where('id',$id)->delete();
      return redirect()->route('riwayatdiagnosa-penyakit')->with('status', 'Data Berhasil Dihapus!');
      }
}
