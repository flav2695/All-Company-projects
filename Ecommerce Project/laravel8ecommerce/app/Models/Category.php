<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $table = "categories"; //Add table name here

    public function Product()  //create function
    {
        $this->belongsTo(Category::class); //eloquent relation
    }
}
