<?php

namespace App\Controllers;

use App\Controllers\Controller;


class BaseController extends Controller
{

    // Common functionality that you want to use across multiple controllers can be defined here
    // public function index()
    // {
        // $data = ['foo' => 'bar'];
        // // echo "Debugging data in the controller:<br>";
        // echo "<pre>";
        // var_dump($data); // Debugging variable $data
        // echo "</pre>";
        // return view('dashboard', $data);
    // }

    protected $helpers = [];

    protected $session;
    protected $request;
    protected $response;
    protected $logger;

    public function initController(\CodeIgniter\HTTP\RequestInterface $request, \CodeIgniter\HTTP\ResponseInterface $response, \Psr\Log\LoggerInterface $logger)
    {
        // Do any setup here
        $this->session = \Config\Services::session();
        $this->request = $request;
        $this->response = $response;
        $this->logger = $logger;
    }

}
