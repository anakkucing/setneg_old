<?php

class Act_komunikasi extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('komunikasi_m'));	
		$this->load->library(array('alias','encrypt'));
		session_start();	
	}
	

	/* ====================================================================================================================================================== */
	function add_kontak_kami()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$nama = $this->input->post('nama');
				$telepon = $this->input->post('telepon');
				$email = $this->input->post('email');
				$alamat = $this->input->post('alamat');
				$isi = $this->input->post('isi');
				
				
				// validasi null
				if($telepon == '') $Error .='Telepon Harus Di Isi';
				if($email == '') $Error .='Email Harus Di Isi';
				if($alamat == '') $Error .='Alamat Harus Di Isi';
				if($isi == '') $Error .='Isi Pesan Harus Di Isi';
				
				if($Error == ''){
					// query
					$q = "Insert into kontak_kami(kontak_kami_nama,kontak_kami_telepon,kontak_kami_email,kontak_kami_alamat,kontak_kami_isi,kontak_kami_tanggal,kontak_kami_status,user_id) 
						values('".$nama."','".$telepon."','".$email."','".$alamat."','".$isi."',NOW(),'D','".$userid."')";
					$this->komunikasi_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function delete_kontak_kami()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$id = $this->uri->segment(3);
				
				// query
				$q = "delete from kontak_kami where kontak_kami_id=$id";
				$this->komunikasi_m->query_manual($q);
				
				redirect('komunikasi/kontak_kami', 'refresh');
		}	
			
	}
	/* ====================================================================================================================================================== */	
	

	/* ====================================================================================================================================================== */
	function add_kritik_saran()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$nama = $this->input->post('nama');
				$judul = $this->input->post('judul');
				$isi = $this->input->post('isi');
				
				
				// validasi null
				if($judul == '') $Error .='Judul Harus Di Isi';
				if($isi == '') $Error .='Isi Pesan Harus Di Isi';
				
				if($Error == ''){
					// query
					$q = "Insert into kritik_saran(kritik_saran_nama,kritik_saran_judul,kritik_saran_isi,kritik_saran_tanggal,kritik_saran_status,user_id) 
						values('".$nama."','".$judul."','".$isi."',NOW(),'D','".$userid."')";
					$this->komunikasi_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	
	function delete_kritik_saran()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$id = $this->uri->segment(3);
				
				// query
				$q = "delete from kritik_saran where kritik_saran_id=$id";
				$this->komunikasi_m->query_manual($q);
				
				redirect('komunikasi/kritik_saran', 'refresh');
		}	
			
	}
	/* ====================================================================================================================================================== */	
	
}
