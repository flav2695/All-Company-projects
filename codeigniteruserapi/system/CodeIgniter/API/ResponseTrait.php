<?php

namespace CodeIgniter\API;

trait ResponseTrait
{
    /**
     * Return a response with the given body and status code.
     *
     * @param mixed $body
     * @param int   $statusCode
     * @return \CodeIgniter\HTTP\Response
     */
    public function respond($body, int $statusCode = 200)
    {
        return service('response')
            ->setStatusCode($statusCode)
            ->setJSON($body);
    }

    /**
     * Return a response with the given body and a 201 Created status code.
     *
     * @param mixed $body
     * @return \CodeIgniter\HTTP\Response
     */
    public function respondCreated($body)
    {
        return $this->respond($body, 201);
    }

    /**
     * Return a response with the given body and a 404 Not Found status code.
     *
     * @param mixed $body
     * @return \CodeIgniter\HTTP\Response
     */
    public function respondNotFound($body)
    {
        return $this->respond($body, 404);
    }

    // Other helper methods for responding with different status codes...
}
