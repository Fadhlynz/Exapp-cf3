<?php

namespace App\Http\Controllers;

use App\Models\Gejalapenyakit;
use App\Models\Hasilpenyakit;
use App\Models\Kondisipenyakit;
use App\Models\Penyakit;
use App\Models\Rulespenyakit;
use App\Models\Setting;
use Illuminate\Http\Request;

class DiagnosapenyakitController extends Controller
{
     public function diagnosa_penyakit()
     {
        $evidences = Gejalapenyakit::all();

        return view('diagnosa_penyakit',[
            'title' => 'Diagnosa Penyakit',
            'evidences' => $evidences,
            'setting_type_input' => Setting::find(1),
            'values' => Kondisipenyakit::orderby('value','asc')->get(),
            'min' => Kondisipenyakit::where('value', 0)->first(),
            'max' => Kondisipenyakit::where('value', 1)->first(),
        ]);
     }

        public function hasildiagnosa_penyakit(Request $request){

        $request->validate([
            'name' => 'required',
        ]); 

        $hypothesyes = Penyakit::all();
        $roles = Rulespenyakit::all();
        $evidences = Gejalapenyakit::all();

        foreach ($hypothesyes as $hypothesis){
            $arrid = 0;
            $cf_old = 0;
            foreach ($roles as $key => $role){
                if ($hypothesis->id == $role->penyakit_id ){
                    $ard = $arrid++; 
                    if ($request->evidance_value[$ard] != 0){
                        $cfhe = $role->value * $request->evidance_value[$ard];
                        $cf_old === 1 ? $cfhe : $cf_old = $cf_old + $cfhe * (1- $cf_old);
                    }
                }
            }
            $menu[] = array(
                'id' => $hypothesis->id,
                'nama' => $hypothesis->name,
                'hsl' => number_format($cf_old * 100,2, '.', ''),
                'slsi' => $hypothesis->srn_penyakit
            );
        }

        $b = 0;
        foreach ($menu as $index => $record) {
            if ($record['hsl'] > $b) { 
                $a = $record['id'];
                $b = $record['hsl'];
                $c = $record['nama'];
                $d = $record['slsi'];
            }
        }

        if($b == 0){
            return redirect()->back()->with('status', 'At least fill in one of the following!');
        }

        // dd($request->all());
        // dd($a);

        Hasilpenyakit::create([
            'penyakit_id' => $a,
            'name' => $request->name,
            'description' => $request->description,
            'value' => $b,
        ]);

        return view('hasildiagnosa_penyakit',[
            'title' => 'Diagnosa Penyakit',
            'hypothesyes' => $hypothesyes,
            'roles' => $roles,
            'evidences' => $evidences,
            'request' => $request
            ]
        );
    }
}