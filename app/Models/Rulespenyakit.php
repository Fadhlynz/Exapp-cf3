<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rulespenyakit extends Model
{
    use HasFactory;

     protected $fillable = [
        'penyakit_id',
        'gejalapenyakit_id',
        'value'
    ];

    public function penyakits(){
        return $this->belongsTo(Penyakit::class);
    }
    
    public function gejalapenyakit(){
        return $this->belongsTo(Gejalapenyakit::class);
    }
}