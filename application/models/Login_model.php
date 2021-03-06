<?php

Class Login_model extends CI_Model {

// Insert registration data in database
  public function registration_insert($data) {

    // Query to check whether username already exist or not
    $condition = "nim =" . "'" . $data['nim'] . "'";
    $this->db->select('*');
    $this->db->from('users');
    $this->db->where($condition);
    $this->db->limit(1);
    $query = $this->db->get();
    if ($query->num_rows() == 0) {

      // Query to insert data in database
      $this->db->insert('users', $data);
      if ($this->db->affected_rows() > 0) {
      return true;
      }
    } else {
      return false;
    }
  }

// Read data using username and password
  public function login($data) {

    $condition = "nim =" . "'" . $data['nim'] . "' AND " . "password =" . "'" . $data['password'] . "'";
    $this->db->select('*');
    $this->db->from('users');
    $this->db->where($condition);
    $this->db->limit(1);
    $query = $this->db->get();

    if ($query->num_rows() == 1) {
      return true;
    } else {
      return false;
    }
  }

  public function login_user($nim, $password){

    $this->db->select('*');
    $this->db->from('users');
    $this->db->where('nim',$nim);
    $this->db->where('password',$password);

    if($query=$this->db->get())
    {
        $user_login =  $query->row_array();
        return $user_login;
    }
    else{
      return false;
    }
  }

  public function login_admin($username, $password){

    $this->db->select('*');
    $this->db->from('admin');
    $this->db->where('username',$username);
    $this->db->where('password',$password);

    if($query=$this->db->get())
    {
        $admin_login =  $query->row_array();
        return $admin_login;
    }
    else{
      return false;
    }
  }

// Read data from database to show data in admin page
  public function read_user_information($nim) {

    $condition = "nim =" . "'" . $nim . "'";
    $this->db->select('*');
    $this->db->from('users');
    $this->db->where($condition);
    $this->db->limit(1);
    $query = $this->db->get();

    if ($query->num_rows() == 1) {
      return $query->result();
    } else {
      return false;
    }
  }

}

?>
