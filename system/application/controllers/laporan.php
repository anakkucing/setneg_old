<?php

class Laporan extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('sop_m','notif_m','main'));	
		$this->load->library(array('alias','encrypt','menubackend'));
		session_start();	
	}

	function sop()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$data=array();
			$data['title'] = 'Laporan Daftar SOP';
			
			$session_data = $this->session->userdata('setneg_in');
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['satkernm'] = $session_data['satkernm'];
			$data['unitkerjanm'] = $session_data['unitkerjanm'];
			$userid = $session_data['userid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			
			
			$this->load->view('template/header',$data);
			$this->load->view('page/laporan/sop/index',$data);
			$this->load->view('template/footer',$data);
		}else{
			redirect('login', 'refresh');
		}
	}
	
	function evalusi()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$data=array();
			$data['title'] = 'Laporan Evaluasi';
			
			$session_data = $this->session->userdata('setneg_in');
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['satkernm'] = $session_data['satkernm'];
			$data['unitkerjanm'] = $session_data['unitkerjanm'];
			$userid = $session_data['userid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			
			
			$this->load->view('template/header',$data);
			$this->load->view('page/laporan/sop/index',$data);
			$this->load->view('template/footer',$data);
		}else{
			redirect('login', 'refresh');
		}
	}

	  
}
