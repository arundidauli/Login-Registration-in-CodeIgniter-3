<?php  
 class Main_model extends CI_Model  
 {  
      function can_login($username, $password)  
      {  
           $this->db->where('username', $username);  
           $this->db->where('password', $password);  
           $query = $this->db->get('users');  
           #$query_get_data = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
           if($query->num_rows() > 0)  
           {  
                return true;  
           }  
           else  
           {  
               return false;       
           }  
      }  

       function can_register($username,$email, $password)  
      {  
           //$this->db->where('username', $username);  
           //$this->db->where('password', $password);  

           $query = $this->db->insert('users', array(
            'username'=>$username,
            'email' => $email, 
            'password' =>$password));
          
           if($query)  
           {  
                return true;  
           }  
           else  
           {  
               return false;       
           }  
      }  
 }  