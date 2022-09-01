<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hasilhama extends Model
{
  use HasFactory;

   protected $fillable = [
   'nama',
   'hasil_diagnosa',
   'cf_max',
   'gejala_terpilih',
   'file_pdf'
   ];

   public function hama()
   {
   return $this->belongsTo(Hama::class);
   }
}
