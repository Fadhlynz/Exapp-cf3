<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gejalapenyakit extends Model
{
    use HasFactory;

    protected $fillable = [
        'code',
        'name',
    ];

    public function rulespenyakits(){
        return $this->hasMany(Rulespenyakit::class);
    }

      public function penyakits()
      {
      return $this->belongsToMany(Penyakit::class)->withPivot('value');
      }
}
