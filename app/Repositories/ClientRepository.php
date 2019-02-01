<?php

namespace App\Repositories;


use App\Client;

class ClientRepository extends ResourceRepository
{
    public function __construct(Client $model)
    {
        $this->model = $model;
    }

    public function getAll()
    {
        return $this->model->all();
    }
}