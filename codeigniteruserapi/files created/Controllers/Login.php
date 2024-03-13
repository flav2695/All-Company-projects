<?php

namespace App\Controllers;

use App\Controllers\Controller;
use CodeIgniter\BaseController; 
use App\Models\UserModel;

class Login extends BaseController
{
    // Method to display the login form
    public function index()
    {
        return view('login');
    } 
   
    // Method to authenticate user login
    public function authenticate()
    {
        // Start session
        $session = session();
        
        // Instantiate UserModel
        $userModel = new UserModel();
 
        // Retrieve email and password from the request
        $email = $this->request->getVar('email');
        $password = $this->request->getVar('password');
         
        // Find user by email
        $user = $userModel->where('email', $email)->first();
 
        // If user not found, redirect back with error message
        if (is_null($user)) {
            return redirect()->back()->withInput()->with('error', 'Invalid username or password.');
        }
 
        // Verify password
        $pwd_verify = password_verify($password, $user['password']);
 
        // If password does not match, redirect back with error message
        if (!$pwd_verify) {
            return redirect()->back()->withInput()->with('error', 'Invalid username or password.');
        }
 
        // Set session data
        $ses_data = [
            'id' => $user['id'],
            'email' => $user['email'],
            'isLoggedIn' => TRUE
        ];
        $session->set($ses_data);
        
        // Redirect to dashboard upon successful login
        return redirect()->to('/dashboard');
    }
 
    // Method to handle user logout
    public function logout()
    {
        // Destroy session
        session_destroy();
        
        // Redirect to login page after logout
        return redirect()->to('/login');
    }
}
