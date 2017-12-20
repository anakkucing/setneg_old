<?php

class Komunikasi extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('sop_m','notif_m','main','komunikasi_m'));	
		$this->load->library(array('alias','encrypt','menubackend'));
		session_start();	
	}
	
	function editor($path) {
		//Loading Library For Ckeditor
		$this->load->library('ckeditor');
		$this->load->library('ckfinder');
		//configure base path of ckeditor folder 
		$this->ckeditor->basePath = base_url().'jscripts/ckeditor/';
		//$this->ckeditor-> config['toolbar'] = 'Full';
		$this->ckeditor->config['toolbar'] = array(array( 'Italic'));
		$this->ckeditor->config['language'] = 'en';
		$this->ckeditor-> config['width'] = '100%';
		$this->ckeditor-> config['height'] = '70px';
		//configure ckfinder with ckeditor config 
		$this->ckfinder->SetupCKEditor($this->ckeditor,$path); 
	  }
	  

	function chatting()
	{			
		if($this->session->userdata('mercu_in'))
		{
			$data=array();
			$data['title'] = 'Chating';
			
			$session_data = $this->session->userdata('mercu_in');
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['satkernm'] = $session_data['satkernm'];
			$data['unitkerjanm'] = $session_data['unitkerjanm'];
			$userid = $session_data['userid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			$data['listuser'] = $this->komunikasi_m->list_user($userid);
			
			$act = $this->uri->segment(3);
			
			
			//$this->load->view('template/header',$data);
			$this->load->view('page/komunikasi/chating/index',$data);
			//$this->load->view('template/footer',$data);
		}else{
			redirect('login', 'refresh');
		}
	}

	function forum()
	{			
		if($this->session->userdata('mercu_in'))
		{
			$data=array();
			$data['title'] = 'Forum Diskusi';
			
			$session_data = $this->session->userdata('mercu_in');
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
			
			
			//$this->load->view('template/header',$data);
			if($act == 'topik'){
				$this->load->view('page/komunikasi/forum/index',$data);
			}else{
				$this->load->view('page/komunikasi/forum/index',$data);
			}
			//$this->load->view('template/footer',$data);
		}else{
			redirect('login', 'refresh');
		}
	}

	function kritik_saran()
	{			
		if($this->session->userdata('mercu_in'))
		{
			$data=array();
			$data['title'] = 'Kritik dan Saran';
			
			$session_data = $this->session->userdata('mercu_in');
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$groupid = $session_data['groupid'];
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['satkernm'] = $session_data['satkernm'];
			$data['unitkerjanm'] = $session_data['unitkerjanm'];
			$userid = $session_data['userid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id = $this->uri->segment(4);
			$data['edit'] = $this->komunikasi_m->edit_table('kritik_saran','kritik_saran_id',$id);
			
			
			$this->load->view('template/header',$data);
			if(($groupid == 9) or ($groupid == 10)){
				$this->load->view('page/komunikasi/kritik_saran/add',$data);
			}else{
				if($act == ''){
					$this->load->view('page/komunikasi/kritik_saran/index',$data);
				}else{
					$this->load->view('page/komunikasi/kritik_saran/action',$data);
				}
			}
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}

	function kontak_kami()
	{			
		if($this->session->userdata('mercu_in'))
		{
			$data=array();
			$data['title'] = 'Kontak Kami';
			
			$session_data = $this->session->userdata('mercu_in');
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$groupid = $session_data['groupid'];
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['satkernm'] = $session_data['satkernm'];
			$data['unitkerjanm'] = $session_data['unitkerjanm'];
			$userid = $session_data['userid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id = $this->uri->segment(4);
			$data['edit'] = $this->komunikasi_m->edit_table('kontak_kami','kontak_kami_id',$id);
			
			
			$this->load->view('template/header',$data);
			if(($groupid == 9) or ($groupid == 10)){
				$this->load->view('page/komunikasi/kontak/add',$data);
			}else{
				if($act == ''){
					$this->load->view('page/komunikasi/kontak/index',$data);
				}else{
					$this->load->view('page/komunikasi/kontak/action',$data);
				}
			}
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}
	  
}
