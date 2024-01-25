<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $table="products"; //Add table name here

    public function Category() //create function Category
    {
        $this->hasMany(Category::class); //eloquent relation
    }
}
