<?php

namespace App\Controllers;

use App\Models\UserModel;
use CodeIgniter\HTTP\Response;
// use CodeIgniter\API\ResponseTrait;

class UserController extends BaseController
{
    public function getUsers()
    {
        // Load the UserModel
        $userModel = new UserModel();

        // Fetch users from the database
        $users = $userModel->findAll();

        // Check if users were found
        if (empty($users)) {
            // If no users found, return a 404 Not Found response
            return $this->response->setStatusCode(Response::HTTP_NOT_FOUND)
                ->setJSON(['error' => 'No users found']);
        }

        // If users found, return them as JSON response
        return $this->response->setJSON($users);
    }


    
    // use ResponseTrait;

    // public function createUser()
    // {
    //     // Insert user into database...
    //      // Retrieve user data from the request
    //      $userData = [
    //         // 'username' => $this->request->getPost('username'),
    //         'email' => $this->request->getPost('email'),
    //         'password' => $this->request->getPost('password'),
    //         // Add any other fields you want to insert
    //     ];

    //     // Load the user model
    //     $userModel = new UserModel();

    //     // Attempt to insert the user data into the database
    //     if ($userModel->insert($userData)) {
    //         // If successful, return a success response
    //         return $this->respondCreated(['message' => 'User created successfully']);
    //     } else {
    //         // If insertion fails, return an error response
    //         return $this->respondServerError(['message' => 'Failed to create user']);
    //     }

    //     // Return a success response
    //     return $this->respondCreated(['message' => 'User created successfully']);
    // }
}
