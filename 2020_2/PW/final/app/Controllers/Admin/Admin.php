<?php
namespace App\Controllers\Admin;
use CodeIgniter\Controller;
use App\Models\ClientsModel;

class Admin extends Controller{
    public function index(){
        $session = \Config\Services::session();
        if($session -> has('user')):
            
            echo view('admin/templates/header');
            echo view('admin/home');
            echo view('admin/templates/footer');
        else:
            $this -> login();
        endif;
    }
    public function login(){
        echo view('admin/users/login');
    }

    public function logout(){
        $session = \Config\Services::session();
        $session ->destroy();
        return redirect() -> to(base_Url('admin'));
    }
}