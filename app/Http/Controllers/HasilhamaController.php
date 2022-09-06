<?php

namespace App\Http\Controllers;

use App\Models\Gejalahama;
use App\Models\Hama;
use App\Models\Hasilhama;
use App\Models\Riwayathama;
use App\Models\Ruleshama;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class HasilhamaController extends Controller
{
    public function index()
    {
      $riwayat = Hasilhama::with('hama')
      ->latest()
      ->paginate(10);
      return view('riwayatdiagnosa.hama', [
      'title' => 'Riwayat Diagnosa Hama',
      'riwayats' => $riwayat,
      ]);
    }

    public function show($id)
    {
        return view('riwayatdiagnosa.hasil_hama', [
        'title' => 'Riwayat Hasil Diagnosa Hama',
        'riwayat' => Hasilhama::find($id)
        ]);
    }

    public function destroy(Hasilhama $hasilhama)
    {
      Hasilhama::where('id',$hasilhama->id)->delete();
      return redirect()->route('riwayatdiagnosa-hama')->with('status', 'Data Berhasil Dihapus!');
    }
}
