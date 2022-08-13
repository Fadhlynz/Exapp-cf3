<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gejalahama extends Model
{
    use HasFactory;

    protected $fillable = [
        'code',
        'name',
    ];

    public function ruleshamas(){
        return $this->hasMany(Ruleshama::class);
    }
}