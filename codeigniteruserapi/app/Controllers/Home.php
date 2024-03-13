<?php

namespace App\Controllers;

use CodeIgniter\BaseController; 

class Home extends BaseController
{
    public function index(): string
    {
        return view('welcome_message');
    }
}
