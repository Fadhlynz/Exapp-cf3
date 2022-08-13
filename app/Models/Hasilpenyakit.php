<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hasilpenyakit extends Model
{
    use HasFactory;

     protected $fillable = [
        'penyakit_id',
        'name',
        'description',
        'value',
    ];

    public function penyakit(){
        return $this->belongsTo(Penyakit::class);
    }
}