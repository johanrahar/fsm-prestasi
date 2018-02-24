<?php


Class User_login extends CI_Controller {

public function __construct() {
parent::__construct();

			// Load form helper library
			$this->load->helper('form');

			// Load form validation library
			$this->load->library('form_validation');

			// Load session library
			$this->load->library('session');

			// Load database
			$this->load->model('Login_model');
			}

	// Show login page
	public function index() {
		$this->load->view('user_login');
	}

	// Show registration page
	public function user_registration_show() {
		$this->load->view('user_register');
	}

// Check for user login process
public function user_login_process() {

	$this->form_validation->set_rules(
			'nim', 'Nomor Induk Mahasiswa (NIM)',
			'trim|required|min_length[14]|max_length[14]|numeric',
			array(
							'required'      => 'Mohon isi %s.',
							'numeric'      => 'Format NIM hanya angka.',
							'min_length'     => 'Jumlah digit NIM kurang dari format.',
							'max_length'     => 'Jumlah digit NIM melebihi format.',
			)
	);
	$this->form_validation->set_rules(
			'password', 'Password',
			'trim|required',
			array(
							'required'      => '%s perlu diisi untuk login.'
			)
	);

	if ($this->form_validation->run() == FALSE) {
		if(isset($this->session->userdata['logged_in'])){
			redirect('User_home', 'refresh');
		}else{
			$this->load->view('user_login');
		}
	} else {
		$data = array(
		'nim' => $this->input->post('nim'),
		'password' => $this->input->post('password')
		);
			$result=$this->Login_model->login_user($data['nim'],md5($data['password']));
			// $result = $this->Login_model->login($data);
			if($result)
			{
					$this->session->set_userdata('status', 'login');
					$this->session->set_userdata('nim',$result['nim']);
					$this->session->set_userdata('namalengkap',$result['namalengkap']);
					$this->session->set_userdata('jurusan',$result['jurusan']);
					$this->session->set_userdata('email',$result['email']);
					$this->session->set_userdata('date_created',$result['date_created']);
					// $sessionuser = $this->session->set_userdata('status');
					redirect('User_home', 'refresh');
				}
				else
				{
					$data = array(
					'error_message' => 'Akun belum terdaftar'
					);
					$this->load->view('user_login', $data);
				}
		// if ($result == TRUE) {
		// 	$nim = $this->input->post('nim');
		// 	$result = $this->Login_model->read_user_information($nim);
		// 		if ($result != false) {
		// 		$session_data = array(
		// 			'nim' => $result[0]->nim,
		// 			'namalengkap' => $result[0]->namalengkap,
		// 			'jurusan' => $result[0]->jurusan,
		// 			'email' => $result[0]->email
		// 		);
		// 		// Add user data in session
		// 		$this->session->set_userdata('logged_in', $session_data);
		// 		//set session
	  //     $this->session->set_userdata('nim',$session_data['nim']);
	  //     $this->session->set_userdata('namalengkap',$result[0]->namalengkap);
	  //     $this->session->set_userdata('jurusan',$result['jurusan']);
	  //     $this->session->set_userdata('email',$result['email']);
		// 		redirect('User_home', 'refresh');
		// 		}
		// } else {
		// 	$data = array(
		// 	'error_message' => 'NIM atau password salah'
		// 	);
		// 	$this->load->view('user_login', $data);
		// }
	}
}

// Logout from admin page
public function logout() {

		// Removing session data
		$sess_array = array(
		'nim' => '',
		'namalengkap' => '',
		'jurusan' => '',
		'email' => ''
		);
		$this->session->unset_userdata('logged_in', $sess_array);
		$this->session->sess_destroy();
		$data['message_display'] = 'Berhasil Logout';
		redirect('User_login', $data);
	}

}

?>
