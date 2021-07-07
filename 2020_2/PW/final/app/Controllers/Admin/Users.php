<?php
namespace App\Controllers\Admin;
use CodeIgniter\Controller;
use App\Models\UsersModel;

class Users extends Controller{

    public function index(){
    
    }

    public function validateLogin(){
        
        $users = new UsersModel;

        $userName = $this ->request->getVar('login'); 
        $userPass = $this ->request->getVar('password');
        
        if($user = $users->getUser($userName)): 
            if($userPass == $user['password']):
                $session = \Config\Services::session();
                $session -> set('user', $user);
                return redirect()-> to(base_Url('admin'));
            else:
                return redirect()-> to(base_Url('admin'));
            endif;
        
        else:
            return redirect()-> to(base_Url('admin'));
        endif;
    }
}