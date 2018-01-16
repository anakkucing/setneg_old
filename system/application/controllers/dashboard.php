<?php

class Dashboard extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('main','notif_m'));	
		$this->load->library(array('alias','encrypt','menubackend'));
		session_start();	
	}
	

	function index()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			
			$data=array();
			$data['title'] = 'Dashboard';
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$this->load->view('template/header',$data);
			$this->load->view('page/dashboard');
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}
	
	
}
