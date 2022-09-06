<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Penyakit extends Model
{
    use HasFactory;

    protected $fillable = [
        'code',
        'name',
        'det_penyakit',
        'srn_penyakit',
        'images'
    ];

    public function history(){
        return $this->hasMany(Hasilpenyakit::class);
    }

    public function rulespenyakits(){
        return $this->hasMany(Rulespenyakit::class);
    }
     public function gejalas()
     {
     return $this->belongsToMany(Gejalahama::class)->withPivot('value_cf');
     }
}
