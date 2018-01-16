<?php

class Login extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('main'));	
		$this->load->library(array('alias'));
		session_start();	
	}
	
	
	function index()
	{			
		
		if($this->session->userdata('setneg_in'))
		{
			
			echo "<meta http-equiv='refresh' content='0; url=".base_url()."dashboard'>";
		}else{
			$this->load->view('page/login');
		}
	}
	
	function login()
	{
		if($this->session->userdata('setneg_in'))
		{
			
			echo "<meta http-equiv='refresh' content='0; url=".base_url()."dashboard'>";
		}else{
			$this->load->view('page/login');
		}
	}
	
	
	function CekLogin()
	 {
	   $this->load->library('form_validation');

	   $this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean');
	   $this->form_validation->set_rules('password', 'Password', 'trim|required|xss_clean|callback_check_database');
	   $this->form_validation->set_error_delimiters('<div class="alert-error" style="margin-bottom:10px; background:#f9bff0; border:1px solid #f950df; color:#000">', '</div>');
		
	   if($this->form_validation->run() == FALSE)
	   {
			$this->load->view('page/login');
	   }
	   else
	   {
			$session_data = $this->session->userdata('setneg_in');
			redirect('dashboard/', 'refresh');
			
	   }

	 }

	 function check_database($password)
	 {
	   $username = $this->input->post('username');
	   $result = $this->main->login($username, $password);

	   if($result)
	   {
		   
			 $sess_array = array();
			 foreach($result as $row)
			 {
				
					if($row->user_status == 'Y'){
					   $sess_array = array(
						 'userid' => $row->user_id,
						 'groupid' => $row->user_group_id,
						 'username' => $row->user_name,
						 'status' => $row->user_status,
						 'foto' => $row->user_foto,
						 'fullname' => $row->user_fullname,
						 'pegawaiid' => $row->pegawai_id,
						 'pegawainip' => $row->pegawai_nip,
						 'pegawainm' => $row->pegawai_nama,
						 'satkerid' => $row->satuan_organisasi_id,
						 'satkernm' => $row->satuan_organisasi_nama,
						 'unitkerjaid' => $row->unit_kerja_id,
						 'unitkerjanm' => $row->unit_kerja_nama,
						 'bagianid' => $row->bagian_id,
					   );
				   
						$_SESSION['IsAuthorized'] = 'ckeditor';
						
					   $this->session->set_userdata('setneg_in', $sess_array);
					   return TRUE;
					}else{
						$this->form_validation->set_message('check_database', 'User anda di blok');
						return false;
					}
			 }
	   }
	   else
	   {
	     $this->form_validation->set_message('check_database', 'Username atau password salah!!!');
	     return false;
	   }
	 }
	 
	
}
