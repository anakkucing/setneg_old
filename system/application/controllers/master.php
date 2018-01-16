<?php

class Master extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('master_m','notif_m','main'));	
		$this->load->library(array('alias','encrypt','menubackend'));
		session_start();	
	}
	

	function satuan_organisasi()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			
			$data=array();
			$data['title'] = 'Satuan Organisasi';
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id =($this->uri->segment(4) == '' ? 0 : $this->uri->segment(4));
			$data['edit'] = $this->master_m->edit_table('satuan_organisasi','satuan_organisasi_id',$id);
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/master/satuan_organisasi/index',$data);
			}else{
				$this->load->view('page/master/satuan_organisasi/action',$data);
			}
			$this->load->view('template/footer',$data);
		}else{
			redirect('login', 'refresh');
		}
	}

	function unit_kerja()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			
			$data=array();
			$data['title'] = 'Unit Kerja';
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id =($this->uri->segment(4) == '' ? 0 : $this->uri->segment(4));
			$data['dtsatker'] = $this->master_m->select_table('satuan_organisasi','satuan_organisasi_id');
			$data['edit'] = $this->master_m->edit_table('unit_kerja','unit_kerja_id',$id);
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/master/unitkerja/index',$data);
			}else{
				$this->load->view('page/master/unitkerja/action',$data);
			}
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}

	function bagian()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			
			$data=array();
			$data['title'] = 'Unit Bagian';
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id =($this->uri->segment(4) == '' ? 0 : $this->uri->segment(4));
			$data['dtsatker'] = $this->master_m->select_table('satuan_organisasi','satuan_organisasi_id');
			$data['dtunitkerja'] = $this->master_m->select_table('unit_kerja','unit_kerja_id');
			$data['edit'] = $this->master_m->edit_table('bagian','bagian_id',$id);
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/master/bagian/index',$data);
			}else{
				$this->load->view('page/master/bagian/action',$data);
			}
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}

	function jabatan_pengesah()
	{			
		if($this->session->userdata('setneg_in'))
		{
			
			$data=array();
			$data['title'] = 'Jabatan Pengesah';
			
			$session_data = $this->session->userdata('setneg_in');
			$data['fullname'] = $session_data['fullname'];
			$data['satkerid'] = $session_data['satkerid'];
			$data['unitkerjaid'] = $session_data['unitkerjaid'];
			$userid = $session_data['userid'];
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['foto'] = $session_data['foto'];
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id =($this->uri->segment(4) == '' ? 0 : $this->uri->segment(4));
			$data['dtsatker'] = $this->master_m->select_table('satuan_organisasi','satuan_organisasi_id');
			$data['dtunitkerja'] = $this->master_m->select_table('unit_kerja','unit_kerja_id');
			$data['edit'] = $this->master_m->edit_table('ttd_pengesah','ttd_pengesah_id',$id);
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/master/jabatan/index',$data);
			}else{
				$this->load->view('page/master/jabatan/action',$data);
			}
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}

	function jenis_sop()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			
			$data=array();
			$data['title'] = 'Jenis SOP';
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id =($this->uri->segment(4) == '' ? 0 : $this->uri->segment(4));
			$data['edit'] = $this->master_m->edit_table('kategori_sop','kategori_id',$id);
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/master/kategorisop/index',$data);
			}else{
				$this->load->view('page/master/kategorisop/action',$data);
			}
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}

	function simbol_panah()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			
			$data=array();
			$data['title'] = 'Simbol Panah';
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id =($this->uri->segment(4) == '' ? 0 : $this->uri->segment(4));
			$data['edit'] = $this->master_m->edit_table('simbol','simbol_id',$id);
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/master/simbol/index',$data);
			}else{
				$this->load->view('page/master/simbol/action',$data);
			}
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}
	
	function pertanyaan()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			
			$data=array();
			$data['title'] = 'Pertanyaan Evaluasi';
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id =($this->uri->segment(4) == '' ? 0 : $this->uri->segment(4));
			$data['edit'] = $this->master_m->edit_table('pertanyaan','pertanyaan_id',$id);
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/master/pertanyaan/index',$data);
			}else{
				$this->load->view('page/master/pertanyaan/action',$data);
			}
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}
	
	
}
