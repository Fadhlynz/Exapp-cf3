<?php

namespace App\Http\Controllers;

use App\Models\Hasilpenyakit;
use App\Models\Penyakit;
use Illuminate\Http\Request;

class HasilpenyakitController extends Controller
{
    public function index()
    {
        return view('riwayatdiagnosa.penyakit',[
            'title' => 'Riwayat Diagnosa Penyakit',
            'histores' => Hasilpenyakit::orderby('id','desc')->get(),
            'hypotesis' => Penyakit::all(),
            'history' => Hasilpenyakit::all(),
        ]);
    }
}