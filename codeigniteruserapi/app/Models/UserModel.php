<?php

namespace App\Models;
 
use CodeIgniter\Model;

class UserModel extends Model {

    protected $table            = 'users';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = ['username', 'email', 'password']; // Specify the allowed fields here

    
    public function register_user() {
        $data = array(
            'email' => $this->input->post('email'),
            'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
            // 'confirm_password' should not be stored in the database
        );
        
        return $this->db->insert('users', $data);
    }
    
    public function login_user($email, $password) {
        $this->db->where('email', $email); // Assuming email is used for login
        $query = $this->db->get('users');
        $user = $query->row();
        
        if ($user && password_verify($password, $user->password)) {
            return $user;
        } else {
            return false;
        }
    }
    
}
?>
