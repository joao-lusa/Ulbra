<?php

namespace App\Controllers;
use CodeIgniter\Controller;
use App\Models\ClientsModel;

class Clients extends Controller{

    public function listClients(){
        $clients = new ClientsModel();

        $data = [
            'clients' => $clients -> getClients()
        ];

        echo view('templates/header');
        echo view('clients/list', $data);
        echo view('templates/footer');
    }
    public function detailsClient($idClient){
        $client = new ClientsModel();

        $data = [
            'clients' => $client -> getClients($idClient)
        ];

        echo view('templates/header');
        echo view('clients/details', $data);
        echo view('templates/footer');

    }
}