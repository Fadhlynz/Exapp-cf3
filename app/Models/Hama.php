<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hama extends Model
{
    use HasFactory;

      protected $fillable = [
        'code',
        'name',
        'det_hama',
        'srn_hama',
        'images'
    ];

      public function history(){
        return $this->hasMany(Hasilhama::class);
      } 

     public function ruleshamas(){
     return $this->hasMany(Ruleshama::class);
     }

      public function gejalas()
    {
        return $this->belongsToMany(Gejalahama::class)->withPivot('value_cf');
    }
}
