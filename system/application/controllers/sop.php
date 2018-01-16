<?php

class Sop extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('sop_m','notif_m','main'));	
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
	  

	function penyusunan_sop()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$path = '../../../jscripts/ckfinder';
			$this->editor($path);
			
			
			$data=array();
			$data['title'] = 'Penyusunan SOP';
			
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
			$data['dtjabatan'] = $this->sop_m->jabatan($session_data['satkerid'],$session_data['unitkerjaid']);
			$data['sop'] = $this->sop_m->sop_detail($this->uri->segment(4));
			
			
			if($act != 'doc'){
				$this->load->view('template/header',$data);
				if($act == ''){
					$this->load->view('page/sop/semua/index',$data);
				}elseif($act == 'lihat'){
					$this->load->view('page/sop/penyusunan_/lihat',$data);
				}elseif($act == 'cekadmin'){
					$this->load->view('page/sop/penyusunan_/lihat',$data);
				}elseif($act == 'upload'){
					$this->load->view('page/sop/penyusunan_/upload',$data);
				}elseif($act == 'edit'){
					$this->load->view('page/sop/penyusunan_/action_edit',$data);
				}else{
					$this->load->view('page/sop/penyusunan_/action',$data);
				}
				$this->load->view('template/footer',$data);
			}else{
				$this->load->view('page/sop/penyusunan_/doc',$data);
			}
		}else{
			redirect('login', 'refresh');
		}
	}
	  

	function revisi_sop()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$data=array();
			$data['title'] = 'Revisi SOP';
			
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
			$data['action'] = $this->sop_m->cek_notif($this->uri->segment(5));
			$data['sop'] = $this->sop_m->sop_detail($this->uri->segment(4));
			$data['pesan'] = $this->sop_m->field_sop('notif','notif_desc','notif_id',$this->uri->segment(5));
			
			
				$this->load->view('template/header',$data);
				if($act == ''){
					$this->load->view('page/sop/revisi/index',$data);
				}elseif($act == 'periksa'){
					$this->load->view('page/sop/revisi/periksa',$data);
				}elseif($act == 'lihat'){
					$this->load->view('page/sop/revisi/lihat',$data);
				}else{
					$this->load->view('page/sop/revisi/ajukan',$data);
				}
				$this->load->view('template/footer',$data);
		}else{
			redirect('login', 'refresh');
		}
	}
	  

	function reviu()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$data=array();
			$data['title'] = 'Reviu SOP';
			
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
			$data['action'] = $this->sop_m->cek_notif($this->uri->segment(5));
			$data['sop'] = $this->sop_m->sop_detail($this->uri->segment(4));
			$data['pesan'] = $this->sop_m->field_sop('notif','notif_desc','notif_id',$this->uri->segment(5));
			$this->notif_m->update_status('notif','notif_status','notif_id',$this->uri->segment(5));
			
				$this->load->view('template/header',$data);
				if($act == 'periksa'){
					$this->load->view('page/sop/reviu/periksa',$data);
				}else{
					$this->load->view('page/sop/reviu/lihat',$data);
				}
				$this->load->view('template/footer',$data);
		}else{
			redirect('login', 'refresh');
		}
	}
	  

	function pengesahan_sop()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$data=array();
			$data['title'] = 'Pengesahan SOP';
			
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
			$data['dtjabatan'] = $this->sop_m->jabatan($session_data['satkerid'],$session_data['unitkerjaid']);
			$data['sop'] = $this->sop_m->sop_detail($this->uri->segment(4));
			// ttd image
			$data['ttd_nama'] = '';
			$data['ttd_img'] = '';
			$ttdpengesah= $this->sop_m->ttd_pengesah($userid);
			foreach($ttdpengesah->result_array() as $row){
				$data['ttd_nama'] = $row['ttd_pengesah_nama'];
				$data['ttd_img'] = $row['ttd_pengesah_gambar'];
			}
			
				$this->load->view('template/header',$data);
				if($act == ''){
					$this->load->view('page/sop/pengesahan/index',$data);
				}else{
					$this->load->view('page/sop/pengesahan/lihat',$data);
				}
				$this->load->view('template/footer',$data);
		}else{
			redirect('login', 'refresh');
		}
	}

	function pencarian_sop()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$data=array();
			$data['title'] = 'Pencarian SOP';
			
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
			$data['dtjabatan'] = $this->sop_m->jabatan($session_data['satkerid'],$session_data['unitkerjaid']);
			$data['sop'] = $this->sop_m->sop_detail($this->uri->segment(4));
			
			
				$this->load->view('template/header',$data);
				if($act == ''){
					$this->load->view('page/sop/pencarian/index',$data);
				}else{
					$this->load->view('page/sop/pencarian/lihat',$data);
				}
				$this->load->view('template/footer',$data);
		}else{
			redirect('login', 'refresh');
		}
	}
	  

	function evaluasi_sop()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$path = '../../../jscripts/ckfinder';
			$this->editor($path);
			
			
			$data=array();
			$data['title'] = 'Evaluasi SOP';
			
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
			$data['dtjabatan'] = $this->sop_m->jabatan($session_data['satkerid'],$session_data['unitkerjaid']);
			$data['sop'] = $this->sop_m->sop_detail($this->uri->segment(4));
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/sop/evaluasi/index',$data);
			}else{
				$this->load->view('page/sop/evaluasi/action',$data);
			}
			$this->load->view('template/footer',$data);
			
		}else{
			redirect('login', 'refresh');
		}
	}

	
}
