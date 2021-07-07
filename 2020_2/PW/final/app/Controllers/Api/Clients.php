<?php

namespace App\Controllers\Api;
use CodeIgniter\Controller;
use App\Models\ClientsModel;

class Clients extends Controller{

    public function clientsApi(){
        $clients = new ClientsModel();

            $data = [
                'clients' => $clients -> getClients()
            ];

        echo json_encode($data);
    }
}