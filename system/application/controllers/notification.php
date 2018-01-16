<?php

class Notification extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('notif_m','sop_m','main'));	
		$this->load->library(array('alias','encrypt','menubackend'));
		session_start();	
	}

	function semua()
	{			
		if($this->session->userdata('setneg_in'))
		{			
			$data=array();
			$data['title'] = 'Pemberitahuan';
			
			$session_data = $this->session->userdata('setneg_in');
			$data['groupid'] = $session_data['groupid'];
			$data['fullname'] = $session_data['fullname'];
			$data['satkernm'] = $session_data['satkernm'];
			$data['unitkerjanm'] = $session_data['unitkerjanm'];
			$userid = $session_data['userid'];
			$data['notif'] = $this->notif_m->notification(5,$userid);
			$data['foto'] = $session_data['foto'];
			$data['menu'] = $this->main->menu_backend($session_data['groupid']);
			
			$act = $this->uri->segment(3);
			
			$this->load->view('template/header',$data);
			if($act == ''){
				$this->load->view('page/notif/index',$data);
			}else{
				$this->load->view('page/notif/action',$data);
			}
			$this->load->view('template/footer',$data);
		}else{
			redirect('login', 'refresh');
		}
	}
	
	function salah()
	{			
		if($this->session->userdata('setneg_in'))
		{		
			$Error ='';
			$notifid = $this->input->post('id');
			$alias = $this->input->post('alias');
			$pesan = $this->input->post('catatan');
			$reviuid = $this->input->post('reviuid');
			
			// validasi
			if($pesan == '') $Error .='Catatan Harus Diisi<br>';
			
			
			if($Error == ''){
				$q ="update sop set sop_step='' where sop_alias='".$alias."'";
				$this->notif_m->query_manual($q);
				
				$q ="update notif set notif_action='sudah' where notif_id='".$notifid."'";
				$this->notif_m->query_manual($q);
				
				$q ="update reviu set reviu_catatan='".$pesan."', reviu_status='ditolak', reviu_tanggal_tindakan=NOW(), reviu_selesai='selesai' where reviu_id='".$reviuid."'";
				$this->notif_m->query_manual($q);
				
				$sop = $this->sop_m->field_sop('sop','sop_nama','sop_alias',$alias);
				$sopuser = $this->sop_m->field_sop('sop','user_id','sop_alias',$alias);
				$user = $this->notif_m->edit_table('user','user_id',$sopuser['user_id']);
				foreach($user->result_array() as $row){
					$q ="insert into notif(notif_title,notif_desc,notif_type,notif_jenis,reviu_id,notif_date,notif_icon,user_id,notif_status,notif_action,sop_alias) 
						values('Reviu SOP : ".$sop['sop_nama']."','".$pesan."','in','reviu','".$reviuid."',NOW(),'wb-chat bg-green-600','".$row['user_id']."','D','sudah','".$alias."')";
					$this->notif_m->query_manual($q);
				}
				echo '1';
			}else{
				
				echo $Error;
				
			}
		}else{
			redirect('login', 'refresh');
		}
	}
	function benar()
	{			
		if($this->session->userdata('setneg_in'))
		{			
			$reviuid = $this->input->post('r');
			$notifid = $this->input->post('i');
			$alias = $this->input->post('a');
			
			$q ="update notif set notif_action='sudah' where notif_id='".$notifid."'";
			$this->notif_m->query_manual($q);
			
			$q ="update sop set sop_step='pengesah' where sop_alias='".$alias."'";
			$this->notif_m->query_manual($q);
			
			$q ="update reviu set reviu_catatan='Sudah Benar', reviu_status='diterima', reviu_tanggal_tindakan=NOW(), reviu_selesai='selesai' where reviu_id='".$reviuid."'";
			$this->notif_m->query_manual($q);
				
			$sop = $this->sop_m->field_sop('sop','sop_nama','sop_alias',$alias);
			$sopuser = $this->sop_m->field_sop('sop','user_id','sop_alias',$alias);
			$user = $this->notif_m->edit_table('user','user_id',$sopuser['user_id']);
			foreach($user->result_array() as $row){
				$q ="insert into notif(notif_title,notif_desc,notif_type,notif_jenis,reviu_id,notif_date,notif_icon,user_id,notif_status,notif_action,sop_alias) 
					values('Reviu SOP : ".$sop['sop_nama']."','SOP ".$sop['sop_nama']." sudah di kirim ke pengesah','in','reviu','".$reviuid."',NOW(),'wb-chat bg-green-600','".$row['user_id']."','D','sudah','".$alias."')";
				$this->notif_m->query_manual($q);
			}
				
		}else{
			redirect('login', 'refresh');
		}
	}

	
}
