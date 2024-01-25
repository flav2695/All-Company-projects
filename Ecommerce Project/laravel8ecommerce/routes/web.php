<?php

use App\Http\Livewire\HomeComponent; //Add this homecomponent path
use App\Http\Livewire\ShopComponent; //Add this shopComponent path
use App\Http\Livewire\CartComponent; //Add this cartComponent path
use App\Http\Livewire\CheckoutComponent; //Add this checkoutComponent path
use App\Http\Livewire\User\UserDashboardComponent; //Add this UserDashboardComponent
use App\Http\Livewire\Admin\AdminDashboardComponent; //Add this UserDashboardComponent
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/',HomeComponent::class); //home page

Route::get('/shop',ShopComponent::class); //shop page

Route::get('/cart',CartComponent::class); //cart page

Route::get('/checkout',CheckoutComponent::class); //checkout page

// Route::middleware(['auth:sanctum',config('jetstream.auth_session'),'verified'])->group(function () {
//     Route::get('/dashboard', function () {
//         return view('dashboard');
//     })->name('dashboard');
// });

// Route::middleware(['auth:sanctum','verified'])->get('/dashboard', function () {
//         return view('dashboard');
// })->name('dashboard');


//For user
Route::middleware(['auth:sanctum','verified'])->group(function(){
    Route::get('/user/dashboard',UserDashboardComponent::class)->name('user.dashboard');
});



// For Admin
Route::middleware(['auth:sanctum','verified','authadmin'])->group(function(){  //authadmin will restrict admin from login remove and try
   Route::get('admin/dashboard',AdminDashboardComponent::class)->name('admin.dashboard');
});



