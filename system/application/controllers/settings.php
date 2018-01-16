<?php

class Settings extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('main','settings_m','notif_m'));	
		$this->load->library(array('menuchecklist','menuchecklistedit','menuchecklistview','listmenubackend','liststruktur_organisasi','checkparent','menubackend'));
		session_start();	
	}
	

	function struktur_organisasi()
	{			
		if($this->session->userdata('setneg_in'))
		{	
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			
			$data=array();
			$data['title'] = 'Struktur Organisasi';
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id = ($this->uri->segment(3) == 'add' ? 0 : $this->uri->segment(4));
			$data['liststruktur'] = $this->settings_m->liststruktur();
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['edit'] = $this->settings_m->edit_table('struktur_organisasi','struktur_organisasi_id',$id);
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/settings/struktur/index',$data);
			}else{
				$this->load->view('page/settings/struktur/action',$data);
			}
			$this->load->view('template/footer',$data);
		}else{
			redirect('login', 'refresh');
		}
	}

	function user_group()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			
			$data=array();
			$data['title'] = 'User Group';
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id = ($this->uri->segment(3) == 'add' ? 0 : $this->uri->segment(4));
			$data['edit'] = $this->settings_m->edit_table('user_group','user_group_id',$id);
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/settings/usergroup/index',$data);
			}else{
				$data['editgroup'] = $this->settings_m->editgroup($id);
				if($act == 'add'){
					$data['listmenu'] = $this->settings_m->listmenu();
				}else{
					$data['listmenu'] = $this->settings_m->listmenu_id($id);
				}
				
				$this->load->view('page/settings/usergroup/action',$data);
			}
			$this->load->view('template/footer',$data);
		}else{
			redirect('login', 'refresh');
		}
	}
	
	function profile()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			
			$data=array();
			$data['title'] = 'User Profile';
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$id = ($this->uri->segment(3) == '' ? 0 : $this->uri->segment(3));
			$data['dtsatker'] = $this->settings_m->select_table('satuan_organisasi','satuan_organisasi_id');
			$data['dtunitkerja'] = $this->settings_m->select_table('unit_kerja','unit_kerja_id');
			$data['dtgroup'] = $this->settings_m->select_table('user_group','user_group_id');
			$data['edit'] = $this->settings_m->edituser($id);
			
			
			$this->load->view('template/header',$data);
			$this->load->view('page/settings/usermanager/profile',$data);
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}

	function user_manager()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			
			$data=array();
			$data['title'] = 'User Manager';
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$id = ($this->uri->segment(3) == 'add' ? 0 : $this->uri->segment(4));
			$data['dtsatker'] = $this->settings_m->select_table('satuan_organisasi','satuan_organisasi_id');
			$data['dtunitkerja'] = $this->settings_m->select_table('unit_kerja','unit_kerja_id');
			$data['dtgroup'] = $this->settings_m->select_table('user_group','user_group_id');
			$data['edit'] = $this->settings_m->edituser($id);
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/settings/usermanager/index',$data);
			}else{
				$this->load->view('page/settings/usermanager/action',$data);
			}
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}

	function menu_manager()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			
			$data=array();
			$data['title'] = 'Menu Manager';
			$data['userid'] = $session_data['userid'];
			$data['groupid'] = $session_data['groupid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['fullname'] = $session_data['fullname'];
			$data['foto'] = $session_data['foto'];
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			$data['listmenuback'] = $this->settings_m->menu_listbackend();
			$parent = ($this->uri->segment(4) == '' ? 0 : $this->uri->segment(4));
			$last_order = $this->settings_m->last_menu_order($parent);
			$data['order'] = 1;
			foreach($last_order->result_array() as $row){
				$data['order'] = $row['menu_order'] + 1;
			}
			$id = ($this->uri->segment(3) == 'add' ? 0 : $this->uri->segment(4));
			
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/settings/menu/index',$data);
			}else{
				$data['edit'] = $this->settings_m->edit_table('menu','menu_id',$id);
				
				$this->load->view('page/settings/menu/action',$data);
			}
			$this->load->view('template/footer');
		}else{
			redirect('login', 'refresh');
		}
	}
	
	
}
