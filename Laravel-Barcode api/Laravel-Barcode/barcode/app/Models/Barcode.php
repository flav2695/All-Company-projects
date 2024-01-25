<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Barcode extends Model
{
    use HasFactory;
    protected $table = 'barcodes';
    protected $fillable = ['id','barcode_scan1','barcode_scan2'];
    // public $timestamps=false; //to hide timestamp in table.
}
