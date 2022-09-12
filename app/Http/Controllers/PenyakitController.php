<?php

namespace App\Http\Controllers;

use App\Models\Gejalapenyakit;
use App\Models\Penyakit;
use App\Models\Rulespenyakit;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class PenyakitController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       return view('penyakit.index', [
            'title' => 'Data Penyakit',
            'penyakit' => Penyakit::orderby('id', 'asc')->get()
        ]);
    }

    // public function autoCode(){
    //     $lates_penyakit = Penyakit::orderby('id', 'desc')->first();
    //     $code = $lates_penyakit->code;
    //     $order = (int) substr($code, 2, 4);
    //     $order++;
    //     $letter = "CP";
    //     $code = $letter . sprintf("%04s", $order); 
    //     return $code;
    // }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('penyakit.create', [
            'title' => 'Tambah Penyakit'
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
            'name' => 'required|max:255',
            'det_penyakit' => 'required',
            'srn_penyakit' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg|max:2048'
        ]);

         if ($request->hasFile('image')) {
          $images = $request->file('image');
          $extention = $images->getClientOriginalExtension();
          $imageName = time() . '.' . $extention;
          $images->move(public_path('images/penyakit/'), $imageName);
         }


        Penyakit::create([
            'code' => $request->code,
            'name' => $request->name,
            'det_penyakit' => $request->det_penyakit,
            'srn_penyakit' => $request->srn_penyakit,
            'images' => $request->image = $imageName,
        ]);

        $penyakit = Penyakit::orderby('id', 'desc')->first();
        $gejala = Gejalapenyakit::all();

        foreach ($gejala as $gejalas) {
            Rulespenyakit::create([
                'penyakit_id' => $penyakit->id,
                'gejalapenyakit_id' => $gejalas->id,
                'value' => 0.0
            ]);
        }

        return redirect()->route('penyakit.index')->with('status', 'Data Berhasil Ditambahkan!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Penyakit  $penyakit
     * @return \Illuminate\Http\Response
     */
    public function show(Penyakit $penyakit)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Penyakit  $penyakit
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return view('penyakit.edit', [
            'title' => 'Edit Penyakit',
            'penyakit' => Penyakit::find($id)
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Penyakit  $penyakit
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // $request->validate([
        //     'name' => 'required|max:255',
        //     'det_penyakit' => 'required',
        //     'srn_penyakit' => 'required'
        // ]);

        $penyakit = Penyakit::find($id);
        
        // Jika File Image di ganti
        if ($request->hasFile('image')) {
          $destination = 'images/penyakit/' . $penyakit->images;
          if (File::exists($destination)) {
          File::delete($destination);
          }
          $images = $request->file('image');
          $extention = $images->getClientOriginalExtension();
          $imageName = time() . '.' . $extention;
          $images->move(public_path('images/penyakit/'), $imageName);

          Penyakit::where('id', $id)->update([
          'code' => $request->code,
          'name' => $request->name,
          'det_penyakit' => $request->det_penyakit,
          'srn_penyakit' => $request->srn_penyakit,
          'images' => $imageName
          ]);
        } else {
          $imageOld = $penyakit->images;
          Penyakit::where('id', $id)->update([
          'code' => $request->code,
          'name' => $request->name,
          'det_penyakit' => $request->det_penyakit,
          'srn_penyakit' => $request->srn_penyakit,
          'images' => $imageOld
          ]);
        }

        

        return redirect()->route('penyakit.index')->with('status', 'Data Berhasil Diubah!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Penyakit  $penyakit
     * @return \Illuminate\Http\Response
     */
    public function destroy(Penyakit $penyakit)
    {
        Penyakit::destroy($penyakit->id);
        $destination = 'images/penyakit/' . $penyakit->images;
          if (File::exists($destination)) {
            File::delete($destination);
          }
        Rulespenyakit::where('gejalapenyakit_id', $penyakit->id)->delete();
        return redirect()->route('penyakit.index')->with('status', 'Data Berhasil Dihapus!');
    }
}
