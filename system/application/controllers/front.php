<?php

class Front extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('front_m','notif_m','main'));	
		$this->load->library(array('alias','encrypt','menubackend'));
		session_start();	
	}
	function editor($path,$width) {
		//Loading Library For Ckeditor
		$this->load->library('ckeditor');
		$this->load->library('ckfinder');
		//configure base path of ckeditor folder 
		$this->ckeditor->basePath = base_url().'jscripts/ckeditor/';
		$this->ckeditor-> config['toolbar'] = 'Full';
		$this->ckeditor->config['language'] = 'en';
		$this->ckeditor-> config['width'] = $width;
		//configure ckfinder with ckeditor config 
		$this->ckfinder->SetupCKEditor($this->ckeditor,$path); 
	  }

	  
	  
	  
	  
	function slide()
	{			
		if($this->session->userdata('setneg_in'))
		{
			
			$data=array();
			$data['title'] = 'Slide';
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id =($this->uri->segment(4) == '' ? 0 : $this->uri->segment(4));
			$data['edit'] = $this->front_m->edit_table('slide','slide_id',$id);
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/front/slide/index',$data);
			}else{
				$this->load->view('page/front/slide/action',$data);
			}
			$this->load->view('template/footer',$data);
		}else{
			redirect('login', 'refresh');
		}
	}

	function tentang_kami()
	{			
		if($this->session->userdata('setneg_in'))
		{
			
			if($this->uri->segment(4) != ''){
				$path = '../../../jscripts/ckfinder';
			}else{
				$path = '../../jscripts/ckfinder';
			}
			$width = '100%';
			$this->editor($path, $width);
				
				
			$data=array();
			$data['title'] = 'Tentang Kami';
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id =($this->uri->segment(4) == '' ? 0 : $this->uri->segment(4));
			$data['edit'] = $this->front_m->edit_table('post_content','content_id',$id);
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/front/tentangkami/index',$data);
			}else{
				$this->load->view('page/front/tentangkami/action',$data);
			}
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}

	function agenda()
	{			
		if($this->session->userdata('setneg_in'))
		{
			
			if($this->uri->segment(4) != ''){
				$path = '../../../jscripts/ckfinder';
			}else{
				$path = '../../jscripts/ckfinder';
			}
			$width = '100%';
			$this->editor($path, $width);
			
			$data=array();
			$data['title'] = 'Agenda';
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id =($this->uri->segment(4) == '' ? 0 : $this->uri->segment(4));
			$data['edit'] = $this->front_m->edit_table('post_content','content_id',$id);
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/front/agenda/index',$data);
			}else{
				$this->load->view('page/front/agenda/action',$data);
			}
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}

	function pengumuman()
	{			
		if($this->session->userdata('setneg_in'))
		{
			
			if($this->uri->segment(4) != ''){
				$path = '../../../jscripts/ckfinder';
			}else{
				$path = '../../jscripts/ckfinder';
			}
			$width = '100%';
			$this->editor($path, $width);
			
			$data=array();
			$data['title'] = 'Pengumuman';
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$session_data = $this->session->userdata('setneg_in');
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['satkerid'] = $session_data['satkerid'];
			$data['unitkerjaid'] = $session_data['unitkerjaid'];
			$act = $this->uri->segment(3);
			$id =($this->uri->segment(4) == '' ? 0 : $this->uri->segment(4));
			$data['edit'] = $this->front_m->edit_table('pengumuman','pengumuman_id',$id);
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/front/pengumuman/index',$data);
			}else{
				$this->load->view('page/front/pengumuman/action',$data);
			}
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}

	function kegiatan()
	{			
		if($this->session->userdata('setneg_in'))
		{
			
			$data=array();
			$data['title'] = 'Kegiatan';
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id =($this->uri->segment(4) == '' ? 0 : $this->uri->segment(4));
			$data['edit'] = $this->front_m->edit_table('kegiatan','kegiatan_id',$id);
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/front/kegiatan/index',$data);
			}else{
				$this->load->view('page/front/kegiatan/action',$data);
			}
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}

	
	
}
