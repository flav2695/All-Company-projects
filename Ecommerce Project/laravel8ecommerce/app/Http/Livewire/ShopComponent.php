<?php

namespace App\Http\Livewire;

use App\Models\Product; //Add this
use Livewire\Component;
use Livewire\WithPagination; // add this line

class ShopComponent extends Component
{
    // use WithPagination; //add this
    public function render()
    {
        $products = Product::paginate(12); // add this
        return view('livewire.shop-component',['products'=> $products])->layout("layouts.base"); //add ->layout("layouts.base") //add this now ,['products'=> $products]
    }
}
