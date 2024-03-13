<?php

namespace App\Controllers;

use CodeIgniter\BaseController;

class Controller
{
    // The index method handles requests to the home page
    public function index()
    {
        // Load a view file called 'welcome_message.php' located in the 'Views' folder
        return view('welcome_message');
    }

    // The about method handles requests to the about page
    public function about()
    {
        // Load a view file called 'about.php' located in the 'Views' folder
        return view('about');
    }

    // Other controller methods can be added here to handle additional pages or actions
}
