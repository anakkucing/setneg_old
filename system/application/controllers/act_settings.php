<?php
ini_set('date.timezone', 'Asia/Jakarta');

class Act_settings extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->model(array('settings_m'));	
		$this->load->library(array('alias','encrypt'));
		session_start();	
	}
	

	/* ====================================================================================================================================================== */
	function add_struktur_organisasi()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$level = $this->input->post('level') + 1;
				$parent = $this->input->post('parent');
				$nama = $this->input->post('nama');
				$child = $this->input->post('child');
				
				// validasi null
				if($nama == '') $Error .='Nama Struktur Harus Di Isi';
				
				if($Error == ''){
					
					// query
					$q = "Insert into struktur_organisasi(struktur_organisasi_level,struktur_organisasi_parent,struktur_organisasi_nama) 
						values('".$level."','".$parent."','".$nama."')";
					$this->settings_m->query_manual($q);
					$id = $this->db->insert_id();
						$child1 = str_replace('-',',',$child).($child == '' ? $id : ','.$id);
						$q = "update struktur_organisasi set struktur_organisasi_mychild='".$child1."' where struktur_organisasi_id=$parent";
						$this->settings_m->query_manual($q);
						
						// cari parent
						$q = "select struktur_organisasi_parent,struktur_organisasi_mychild from struktur_organisasi where struktur_organisasi_id=$parent";
						$updateparent = $this->settings_m->query_manual($q);
						foreach($updateparent->result_array() as $rows) {
							$parent2 = $rows['struktur_organisasi_parent'];
							$child2 = $rows['struktur_organisasi_mychild'];
							
								$q = "select struktur_organisasi_id,struktur_organisasi_parent,struktur_organisasi_mychild from struktur_organisasi where struktur_organisasi_id=$parent2";
								$updateparent = $this->settings_m->query_manual($q);
								foreach($updateparent->result_array() as $rows) {
									$parent3 = $rows['struktur_organisasi_parent'];
									$child3 = $rows['struktur_organisasi_mychild'].($rows['struktur_organisasi_mychild'] == '' ? $id : ','.$id);
									$q = "update struktur_organisasi set struktur_organisasi_mychild='".$child3."' where struktur_organisasi_id=".$rows['struktur_organisasi_id']."";
									$this->settings_m->query_manual($q);
									
									$q = "select struktur_organisasi_id,struktur_organisasi_parent,struktur_organisasi_mychild from struktur_organisasi where struktur_organisasi_id=$parent3";
									$updateparent = $this->settings_m->query_manual($q);
									foreach($updateparent->result_array() as $rows) {
										$child4 = $rows['struktur_organisasi_mychild'].($rows['struktur_organisasi_mychild'] == '' ? $id : ','.$id);
										$q = "update struktur_organisasi set struktur_organisasi_mychild='".$child4."' where struktur_organisasi_id=".$rows['struktur_organisasi_id']."";
										$this->settings_m->query_manual($q);
									}
								}
						}
						
						
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	
	function edit_struktur_organisasi()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$id = $this->input->post('id');
				$nama = $this->input->post('nama');
				
				// validasi null
				if($nama == '') $Error .='Nama Struktur Harus Di Isi';
				
				if($Error == ''){
					
					// query
					$q = "update struktur_organisasi set struktur_organisasi_nama='".$nama."' where struktur_organisasi_id=$id";
					$this->settings_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function delete_struktur_organisasi()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$$Error = '';
				$id = $this->uri->segment(3);
				
				// query
				$q = "delete from struktur_organisasi where struktur_organisasi_id=$id";
				$this->settings_m->query_manual($q);
				
				$q = "delete from struktur_organisasi where struktur_organisasi_parent=$id";
				$this->settings_m->query_manual($q);
					
				redirect('settings/struktur_organisasi', 'refresh');
		}	
			
	}
	/* ====================================================================================================================================================== */	
	
	/* ====================================================================================================================================================== */
	function add_usergroup()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error ='';
				$GroupName = $this->input->post('GroupName');
				$StatusGroup = $this->input->post('StatusGroup');
				
				// validasi
				if($GroupName == '') $Error .='Group Name Harus Di Isi';
				
				if($Error == ''){
						$q ="INSERT INTO user_group(user_group_name,user_group_status) 
						value('".$GroupName."','".$StatusGroup."')";
						$this->settings_m->query_manual($q);
						$groupid = $this->db->insert_id();
						
						$check = $this->input->post('check');
						for($i=0;$i<count($check); $i++){
							$add = $this->input->post('add_'.$check[$i].'');	
							$edit = $this->input->post('edit_'.$check[$i].'');	
							$delete = $this->input->post('delete_'.$check[$i].'');	
							$q ="INSERT INTO access_menu(menu_id,access_menu_a,access_menu_e,access_menu_d,user_group_id) 
							value('".$check[$i]."','".$add."','".$edit."','".$delete."','".$groupid."')";
							$this->settings_m->query_manual($q);
						}
					
					echo '1';
				}else{
					
					echo $Error;
					
				}
				
				
		}	
			
	}
	
	
	function edit_usergroup()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error ='';
				$GroupId = $this->input->post('id');
				$GroupName = $this->input->post('GroupName');
				$StatusGroup = $this->input->post('StatusGroup');
				
				// validasi
				if($GroupName == '') $Error .='Group Name Harus Di Isi';
				
				if($Error == ''){
						$q ="UPDATE user_group SET user_group_name='".$GroupName."',user_group_status='".$StatusGroup."' where user_group_id='".$GroupId."'";
						$this->settings_m->query_manual($q);
						
						$q ="DELETE from access_menu where user_group_id='".$GroupId."'";
						$this->settings_m->query_manual($q);
						
						
						$check = $this->input->post('check');	
						for($i=0;$i<count($check); $i++){
							$add = $this->input->post('add_'.$check[$i].'');	
							$edit = $this->input->post('edit_'.$check[$i].'');	
							$delete = $this->input->post('delete_'.$check[$i].'');	
							$q ="INSERT INTO access_menu(menu_id,access_menu_a,access_menu_e,access_menu_d,user_group_id) 
							value('".$check[$i]."','".$add."','".$edit."','".$delete."','".$GroupId."')";
							$this->settings_m->query_manual($q);
						}
					
					echo '1';
				}else{
					
					echo $Error;
					
				}
				
				
		}	
			
	}
	
	function delete_usergroup()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$id = $this->uri->segment(3);
				
				// query
				$q = "delete from user_group where user_group_id=$id";
				$this->settings_m->query_manual($q);
				
				$q = "delete from access_menu where user_group_id=$id";
				$this->settings_m->query_manual($q);
					
				redirect('settings/user_group', 'refresh');
		}	
			
	}
/* ====================================================================================================================================================== */


	/* ====================================================================================================================================================== */
	function add_user()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username1 = $session_data['username'];
		
				$Error ='';
				$username = str_replace(' ','',$this->input->post('username'));
				$password = $this->input->post('password');
				$group = $this->input->post('group');
				
				$nm_pegawai = $this->input->post('nm_pegawai');
				$nip = $this->input->post('nip');
				$satker = $this->input->post('satker');
				$unitkerja = $this->input->post('unitkerja');
				$bagian = $this->input->post('bagian');
				
				// validasi
				if($username == '') {
						$Error .='Username Harus Di Isi';
				}else{
						$count = $this->settings_m->cek_null('user','user_name',$username);
						if($count >= 1) $Error .='Username Double';
				}
				if($password == '') $Error .='Password Harus Di Isi';
				if($group == '') $Error .='Group Harus Di Isi';
				if($nm_pegawai == '') $Error .='Nama Pegawai Harus Di Isi';
				if($nip == '') $Error .='NIP Harus Di Isi';
				if($satker == '') $Error .='Satuan Organisasi Harus Di Isi';
				if($unitkerja == '') $Error .='Unit Kerja Harus Di Isi';
				if($bagian == '') $Error .='Bagian Harus Di Isi';
				//upload
				$img='';
				$this->load->library('upload');
				$nmfile = 'pp_'.time();
				$config['upload_path'] = './assets/media/profile/';
				$config['allowed_types'] = 'jpg'; 
				$config['max_size'] = '3072'; 
				$config['max_width']  = '500'; 
				$config['max_height']  = '500'; 
				$config['file_name'] = $nmfile;
		
				$this->upload->initialize($config);
				if($_FILES['fileupload']['name'])
				{
					if ($this->upload->do_upload('fileupload')) {
						$gbr = $this->upload->data();
						$img = $gbr['file_name'];
					}else{
						$Error .='Gambar Gagal di Upload';
					}
				}
				// upload
				
				if($Error == ''){
						$q ="INSERT INTO user(user_group_id,satuan_organisasi_id,unit_kerja_id,bagian_id,user_name,user_pass,user_fullname,user_foto,user_status) 
						value('".$group."','".$satker."','".$unitkerja."','".$bagian."','".$username."','".md5($password)."','".$nm_pegawai."','".$img."','Y')";
						$this->settings_m->query_manual($q);
						$userid = $this->db->insert_id();
						
						$q ="INSERT INTO pegawai(user_id,pegawai_nama,pegawai_nip) 
						value('".$userid."','".$nm_pegawai."','".$nip."')";
						$this->settings_m->query_manual($q);
							
					echo '1';
				}else{
					
					echo $Error;
					
				}
				
				
		}	
			
	}
	
	
	function edit_user()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username1 = $session_data['username'];
		
				$Error ='';
				$id = $this->input->post('id');
				$username = str_replace(' ','',$this->input->post('username'));
				$password = ($this->input->post('password') != '' ? ',user_pass="'.md5($this->input->post('password')).'"' : '');
				$group = $this->input->post('group');
				
				$nm_pegawai = $this->input->post('nm_pegawai');
				$nip = $this->input->post('nip');
				$satker = $this->input->post('satker');
				$unitkerja = $this->input->post('unitkerja');
				$bagian = $this->input->post('bagian');
				
				// validasi
				if($group == '') $Error .='Group Harus Di Isi';
				if($nm_pegawai == '') $Error .='Nama Pegawai Harus Di Isi';
				if($nip == '') $Error .='NIP Harus Di Isi';
				if($satker == '') $Error .='Satuan Organisasi Harus Di Isi';
				if($unitkerja == '') $Error .='Unit Kerja Harus Di Isi';
				if($bagian == '') $Error .='Bagian Harus Di Isi';
				//upload
				$img=$this->input->post('gambar');
				$this->load->library('upload');
				$nmfile = 'pp_'.time();
				$config['upload_path'] = './assets/media/profile/';
				$config['allowed_types'] = 'jpg'; 
				$config['max_size'] = '3072'; 
				$config['max_width']  = '500'; 
				$config['max_height']  = '500'; 
				$config['file_name'] = $nmfile;
		
				$this->upload->initialize($config);
				if($_FILES['fileupload']['name'])
				{
					if ($this->upload->do_upload('fileupload')) {
						$gbr = $this->upload->data();
						$img = $gbr['file_name'];
					}else{
						$Error .='Gambar Gagal di Upload';
					}
				}
				// upload
				
				if($Error == ''){
						$q ="update user set user_group_id='".$group."',satuan_organisasi_id='".$satker."',unit_kerja_id='".$unitkerja."',bagian_id='".$bagian."',user_fullname='".$nm_pegawai."',user_foto='".$img."' ".$password." where user_id='".$id."'";
						$this->settings_m->query_manual($q);
						
						$q ="update pegawai set pegawai_nama='".$nm_pegawai."',pegawai_nip='".$nip."' where user_id='".$id."'";
						$this->settings_m->query_manual($q);
							
					echo '1';
				}else{
					
					echo $Error;
					
				}
				
				
		}	
			
	}
	
	function edit_profile()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username1 = $session_data['username'];
		
				$Error ='';
				$id = $this->input->post('id');
				$username = str_replace(' ','',$this->input->post('username'));
				$password = ($this->input->post('password') != '' ? ',user_pass="'.md5($this->input->post('password')).'"' : '');
				$group = $this->input->post('group');
				
				$nm_pegawai = $this->input->post('nm_pegawai');
				$nip = $this->input->post('nip');
				$satker = $this->input->post('satker');
				$unitkerja = $this->input->post('unitkerja');
				$bagian = $this->input->post('bagian');
				
				// validasi
				if($group == '') $Error .='Group Harus Di Isi<br>';
				if($nm_pegawai == '') $Error .='Nama Pegawai Harus Di Isi<br>';
				if($nip == '') $Error .='NIP Harus Di Isi<br>';
				if($satker == '') $Error .='Satuan Organisasi Harus Di Isi<br>';
				if($unitkerja == '') $Error .='Unit Kerja Harus Di Isi<br>';
				if($bagian == '') $Error .='Bagian Harus Di Isi<br>';
				//upload
				$img=$this->input->post('gambar');
				$this->load->library('upload');
				$nmfile = 'pp_'.time();
				$config['upload_path'] = './assets/media/profile/';
				$config['allowed_types'] = 'jpg'; 
				$config['max_size'] = '3072'; 
				$config['max_width']  = '500'; 
				$config['max_height']  = '500'; 
				$config['file_name'] = $nmfile;
		
				$this->upload->initialize($config);
				if($_FILES['fileupload']['name'])
				{
					if ($this->upload->do_upload('fileupload')) {
						$gbr = $this->upload->data();
						$img = $gbr['file_name'];
					}else{
						$Error .='Gambar Gagal di Upload<br>';
					}
				}
				// upload
				
				if($Error == ''){
						$q ="update user set satuan_organisasi_id='".$satker."',unit_kerja_id='".$unitkerja."',bagian_id='".$bagian."',user_fullname='".$nm_pegawai."',user_foto='".$img."' ".$password." where user_id='".$id."'";
						$this->settings_m->query_manual($q);
						
						$q ="update pegawai set pegawai_nama='".$nm_pegawai."',pegawai_nip='".$nip."' where user_id='".$id."'";
						$this->settings_m->query_manual($q);
					if($password == '') echo '1';
					else echo '2';
					
				}else{
					
					echo $Error;
					
				}
				
				
		}	
			
	}
	
	
	function delete_user()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$id = $this->uri->segment(3);
				
				// query
				$q = "delete from user where user_id=$id";
				$this->settings_m->query_manual($q);
				
				$q = "delete from pegawai where user_id=$id";
				$this->settings_m->query_manual($q);
					
				redirect('settings/user_manager', 'refresh');
		}	
			
	}
/* ====================================================================================================================================================== */


/* ====================================================================================================================================================== */
	function add_menu()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$parent = $this->input->post('parent');
				$nama = $this->input->post('nama');
				$link = $this->input->post('link');
				$order = $this->input->post('order');
				$level = $this->input->post('level');
				
				// validasi null
				if($nama == '') $Error .='Nama Menu Harus diisi<br>';
				if($link == '') $Error .='Link Menu Harus diisi';
				
				if($Error == ''){
					
					// query
					$q = "Insert into menu(menu_parent,menu_order,menu_name,menu_level,menu_link,menu_sts_child,created_on,created_by) 
						values('".$parent."','".$order."','".$nama."','".$level."','".$link."','T',NOW(),'".$username."')";
					$this->settings_m->query_manual($q);
					$id = $this->db->insert_id();
					if($parent != 0){
						$q = "update menu set menu_sts_child='Y' where menu_id=$parent";
						$this->settings_m->query_manual($q);
					}
						
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function edit_menu()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$id = $this->input->post('id');
				$nama = $this->input->post('nama');
				$link = $this->input->post('link');
				
				// validasi null
				if($nama == '') $Error .='Nama Menu Harus diisi<br>';
				if($link == '') $Error .='Link Menu Harus diisi';
				
				if($Error == ''){
					
					// query
					$q = "update menu set menu_name='".$nama."', menu_link='".$link."' where menu_id=$id";
					$this->settings_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function order_parent_backend(){
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$id = $this->uri->segment(3);
				$order = $this->uri->segment(4);
				$updown = $this->uri->segment(5);
				
				// find id
				$result = $this->settings_m->order_back_parent($updown);
				foreach($result->result_array() as $row){
					$menuid = $row['menu_id'];
				}
				
				// edit
				$this->settings_m->order_back_id($updown,$id);
				$this->settings_m->order_back_id($order,$menuid);
				
				redirect('settings/menu_manager', 'refresh');
		}
	}
	
	function order_child_backend(){
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$id = $this->uri->segment(3);
				$order = $this->uri->segment(4);
				$updown = $this->uri->segment(5);
				$parent = $this->uri->segment(6);
				
				// find id
				$result = $this->settings_m->order_back_child($parent,$updown);
				foreach($result->result_array() as $row){
					$menuid = $row['menu_id'];
				}
				
				// edit
				$this->settings_m->order_back_id($updown,$id);
				$this->settings_m->order_back_id($order,$menuid);
				
				redirect('settings/menu_manager', 'refresh');
		}
	}
	
	function delete_menu()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$id = $this->uri->segment(3);
				
				// query
				$q = "delete from menu where menu_id=$id";
				$this->settings_m->query_manual($q);
				
				$q = "delete from menu where menu_parent=$id";
				$this->settings_m->query_manual($q);
					
				redirect('settings/menu_manager', 'refresh');
		}	
			
	}
/* ====================================================================================================================================================== */

}
