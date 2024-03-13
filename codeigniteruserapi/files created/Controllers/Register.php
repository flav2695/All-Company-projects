<?php

namespace App\Controllers;

use App\Controllers\Controller;
use CodeIgniter\BaseController; 
use App\Models\UserModel;

class Register extends BaseController
{
    // Load the form helper in the constructor
    public function __construct()
    {
        helper(['form']);
    }

    // Method to display the registration form
    public function index()
    {
        $data = [];
        return view('register', $data);
    }

    // Method to handle the registration form submission
    public function register()
    {
        // Define validation rules for the registration form fields
        $rules = [
            'email' => 'required|min_length[4]|max_length[255]|valid_email|is_unique[users.email]',
            'password' => 'required|min_length[8]|max_length[255]',
            'confirm_password' => 'matches[password]'
        ];

        // Validate the form inputs against the defined rules
        if ($this->validate($rules)) {
            // If validation passes, save the user data to the database
            $model = new UserModel();
            $data = [
                'email'    => $this->request->getVar('email'),
                'password' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT)
            ];
            $model->save($data);

            
            // Set flash message
            session()->setFlashdata('success', 'Registration successful!');

            // Redirect to the login page after successful registration
            return redirect()->to('/login');
        } else {
            // If validation fails, return to the registration form with validation errors
            $data['validation'] = $this->validator;
            return view('register', $data);
        }
    }
}
