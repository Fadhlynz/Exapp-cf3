<?php

namespace App\Http\Controllers;

use App\Models\Gejalahama;
use App\Models\Hama;
use App\Models\Ruleshama;
use Illuminate\Http\Request;

class GejalahamaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('gejalahama.index', [
            'title' => 'Gejala Hama',
            'gejalahama' => Gejalahama::orderby('id', 'asc')->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('gejalahama.create', [
            'title' => 'Tambah Gejala Hama'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         $request->validate([
            'code' => 'required|max:255',
            'name' => 'required|max:255'
        ]);

        Gejalahama::create([
            'code' => $request->code,
            'name' => $request->name,
        ]);

        $hamas = Hama::all();
        $gejalahamas = Gejalahama::orderby('id', 'desc')->first();

        foreach ($hamas as $h) {
            Ruleshama::create([
                'hama_id' => $h->id, 
                'gejalahama_id' => $gejalahamas->id,
                'value' => 0.0
            ]);
        }

        return redirect()->route('gejalahama.index')->with('status','Data Berhasil Ditambahkan!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Gejalahama  $gejalahama
     * @return \Illuminate\Http\Response
     */
    public function show(Gejalahama $gejalahama)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Gejalahama  $gejalahama
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $gejalahama = Gejalahama::where('id',$id)->first();
        return view('gejalahama.edit', [
            'title' => 'Edit Gejala Hama',
            'gejalahama' => $gejalahama
        ]); 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Gejalahama  $gejalahama
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'code' => 'required|max:255',
            'name' => 'required|max:255'
        ]);

        Gejalahama::where('id', $id)
            ->update([
                'code' => $request->code,
                'name' => $request->name
            ]);
            
        return redirect()->route('gejalahama.index')->with('status','Data Berhasil Diubah!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Gejalahama  $gejalahama
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Gejalahama::where('id',$id)->delete();
        Ruleshama::where('gejalahama_id',$id)->delete();
        return redirect()->route('gejalahama.index')->with('status','Data Berhasil DiHapus!');
    }
}
