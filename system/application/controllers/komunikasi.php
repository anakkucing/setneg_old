<?php
date_default_timezone_set("Asia/Bangkok");
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
		if($this->session->userdata('setneg_in'))
		{
			$data=array();
			$data['title'] = 'Chating';
			
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
			
			
			$this->load->view('page/komunikasi/chating/index',$data);
		}else{
			redirect('login', 'refresh');
		}
	}
	
	function searchKontak()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$userid = $session_data['userid'];
			$key	= $this->input->post("key");
			$data['listuser'] = $this->komunikasi_m->list_user($userid,$key);
			
			$this->load->view("page/komunikasi/chating/kontak",$data);
		}else{
			redirect('login', 'refresh');
		}
	}
	function getChat_all()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$data['userid'] = $session_data['userid'];
			$id_user	= $this->input->post("id_user",true); //tujuan
			$id			= $session_data['userid']; //dari
			$id_max		= $this->input->post('id_max'); //dari
			//update status
			$this->komunikasi_m->UpdateStatus($id,$id_user);
			
			$where	= "(((user_from = '$id_user' AND user_to = '$id') OR (user_to = '$id_user' AND user_from = '$id')))";
			$chat	= $this->komunikasi_m->getAll($where);
			
			$where2	= "(((user_from = '$id_user' AND user_to = '$id') OR (user_to = '$id_user' AND user_from = '$id')) AND chating_id > '$id_max')";
			$get_id = $this->komunikasi_m->getLastId($where2);
			
			$data['id_max']		= (!isset($get_id['chating_id']) ? 0 : $get_id['chating_id']);
			$data['id_user']	= $id_user;
			$data['chat'] 		= $chat;
			
			$act = $this->uri->segment(3);
			
			$this->load->view("page/komunikasi/chating/vwchatbox",$data);
		}else{
			redirect('login', 'refresh');
		}
	}
	function getLastId()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$data['userid'] = $session_data['userid'];
			$id_user	= $this->input->post("id_user",true); //tujuan
			$id			= $session_data['userid']; //dari
			$id_max		= $this->input->post('id_max'); //dari
			
			$where	= "(((user_from = '$id_user' AND user_to = '$id') OR (user_to = '$id_user' AND user_from = '$id')) AND chating_id > '$id_max')";
			$get_id = $this->komunikasi_m->getLastId($where);
			
			echo json_encode(array("id" => $get_id['chating_id'] != '' ?  $get_id['chating_id'] : $id_max ));
			
		}else{
			redirect('login', 'refresh');
		}
	}
	function getChat()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$data['userid'] = $session_data['userid'];
			$id_user	= $this->input->post("id_user",true); //tujuan
			$id			= $session_data['userid']; //dari
			$id_max		= $this->input->post('id_max'); //dari

			$where	= "(((user_from = '$id_user' AND user_to = '$id') OR (user_to = '$id_user' AND user_from = '$id')) AND chating_id > '$id_max')";
			$chat	= $this->komunikasi_m->getAll($where);
			$data['id_max']		= $id_max;
			$data['id_user']	= $id_user;
			$data['chat'] 		= $chat;
			
			$this->load->view("page/komunikasi/chating/vwchatbox",$data);
		}else{
			redirect('login', 'refresh');
		}
	}
	function sendMessage()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$session_data = $this->session->userdata('setneg_in');
			$data['userid'] = $session_data['userid'];
			$id_user	= $this->input->post("id_user",true); //tujuan
			$id			= $session_data['userid']; //dari
			$pesan		= addslashes($this->input->post("pesan",true));
			
			$data	= array(
				'user_from' => $id,
				'user_to' => $id_user,
				'chating_message' => $pesan,
				'chating_date' => date('Y-m-d H:i:s')
			);
			
			$query	=	$this->komunikasi_m->getInsert($data);
			
			if($query){
				$rs = 1;
			}else{
				$rs	= 2;
			}
			
			echo json_encode(array("result"=>$rs));
			
		}else{
			redirect('login', 'refresh');
		}
	}

/* ========================================================================================================================================== */

	function forum()
	{			
		if($this->session->userdata('setneg_in'))
		{
			$data=array();
			$data['title'] = 'Forum Diskusi';
			
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
		if($this->session->userdata('setneg_in'))
		{
			$data=array();
			$data['title'] = 'Kritik dan Saran';
			
			$session_data = $this->session->userdata('setneg_in');
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
		if($this->session->userdata('setneg_in'))
		{
			$data=array();
			$data['title'] = 'Kontak Kami';
			
			$session_data = $this->session->userdata('setneg_in');
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
