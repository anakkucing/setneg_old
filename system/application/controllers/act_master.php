<?php

class Act_master extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('master_m'));	
		$this->load->library(array('alias','encrypt'));
		session_start();	
	}
	

	/* ====================================================================================================================================================== */
	function add_satuan_organisasi()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$NamaSatker = $this->input->post('NamaSatker');
				
				
				// validasi null
				if($NamaSatker == '') $Error .='Nama Satuan Organisasi Harus Di Isi';
				
				if($Error == ''){
					
					// query
					$q = "Insert into satuan_organisasi(satuan_organisasi_nama) 
						values('".$NamaSatker."')";
					$this->master_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	
	function edit_satuan_organisasi()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$id = $this->input->post('id');
				$NamaSatker = $this->input->post('NamaSatker');
				
				
				// validasi null
				if($NamaSatker == '') $Error .='Nama Satuan Organisasi Harus Di Isi';
				
				if($Error == ''){
					
					// query
					$q = "update satuan_organisasi set satuan_organisasi_nama='".$NamaSatker."' where satuan_organisasi_id=$id";
					$this->master_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function delete_satuan_organisasi()
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
				$q = "delete from satuan_organisasi where satuan_organisasi_id=$id";
				$this->master_m->query_manual($q);
				
				$q = "delete from unit_kerja where satuan_organisasi_id=$id";
				$this->master_m->query_manual($q);
				
				$q = "delete from bagian where satuan_organisasi_id=$id";
				$this->master_m->query_manual($q);
				
				redirect('master/satuan_organisasi', 'refresh');
		}	
			
	}
	/* ====================================================================================================================================================== */	
	
	
	/* ====================================================================================================================================================== */
	function add_unit_kerja()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$satker = $this->input->post('satker');
				$nama = $this->input->post('nama');
				
				// validasi null
				if($satker == '')$Error .='Satuan Organisasi Harus Di Isi';
				if($nama == '')$Error .='Nama Unit Kerja Harus Di Isi';
				
				if($Error == ''){
					
					// query
					$q = "Insert into unit_kerja(satuan_organisasi_id,unit_kerja_nama)
						values('".$satker."','".$nama."')";
					$this->master_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function edit_unit_kerja()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$id = $this->input->post('id');
				$satker = $this->input->post('satker');
				$nama = $this->input->post('nama');
				
				// validasi null
				if($nama == '')$Error .='Nama Unit Kerja Harus Di Isi';
				if($satker == '')$Error .='Satuan Organisasi Harus Di Isi';
				
				if($Error == ''){
					
					// query
					$q = "update unit_kerja set satuan_organisasi_id='".$satker."', unit_kerja_nama='".$nama."'  where unit_kerja_id=$id";
					$this->master_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	function delete_unit_kerja()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$id = $this->uri->segment(3);
				
				// query
				$q = "delete from unit_kerja where unit_kerja_id=$id";
				$this->master_m->query_manual($q);
				
				$q = "delete from bagian where unit_kerja_id=$id";
				$this->master_m->query_manual($q);
				
					
				redirect('master/unit_kerja', 'refresh');
		}	
			
	}
/* ====================================================================================================================================================== */


	
	/* ====================================================================================================================================================== */
	function add_bagian()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$satker = $this->input->post('satker');
				$unitkerja = $this->input->post('unitkerja');
				$nama = $this->input->post('nama');
				
				// validasi null
				if($satker == '')$Error .='Satuan Organisasi Harus Di Isi';
				if($unitkerja == '')$Error .='Unit Kerja Harus Di Isi';
				if($nama == '')$Error .='Nama Bagian Harus Di Isi';
				
				if($Error == ''){
					
					// query
					$q = "Insert into bagian(satuan_organisasi_id,unit_kerja_id,bagian_nama)
						values('".$satker."','".$unitkerja."','".$nama."')";
					$this->master_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function edit_bagian()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$id = $this->input->post('id');
				$satker = $this->input->post('satker');
				$unitkerja = $this->input->post('unitkerja');
				$nama = $this->input->post('nama');
				
				// validasi null
				if($satker == '')$Error .='Satuan Organisasi Harus Di Isi';
				if($unitkerja == '')$Error .='Unit Kerja Harus Di Isi';
				if($nama == '')$Error .='Nama Bagian Harus Di Isi';
				
				if($Error == ''){
					
					// query
					$q = "update bagian set satuan_organisasi_id='".$satker."', unit_kerja_id='".$unitkerja."', bagian_nama='".$nama."'  where bagian_id=$id";
					$this->master_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	function delete_bagian()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$id = $this->uri->segment(3);
				
				// query
				$q = "delete from bagian where bagian_id=$id";
				$this->master_m->query_manual($q);
				
					
				redirect('master/bagian', 'refresh');
		}	
			
	}
/* ====================================================================================================================================================== */


	
/* ====================================================================================================================================================== */
	function add_jabatan_pengesah()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$nip = $session_data['pegawainip'];
		
				$Error = '';
				$satker = $this->input->post('satker');
				$unitkerja = $this->input->post('unitkerja');
				$nama = $this->input->post('nama');
				$jabatan = $this->input->post('jabatan');
				$status = $this->input->post('status');
				
				// validasi null
				if($jabatan == '')$Error .='Jabatan Harus Di Isi';
				if($_FILES['ttd']['tmp_name'] != ''){
						$ext = pathinfo($_FILES['ttd']['name'], PATHINFO_EXTENSION);
						$size = $_FILES['ttd']['size'];
						if($ext != 'jpg'){
							$Error .= 'File Harus .jpg<br>';
						}else{
							//upload
							$img = '';
							$this->load->library('upload');
							$nmfile = 'ttd_'.time();
							$config['upload_path'] = './assets/media/ttd/';
							$config['allowed_types'] = 'jpg'; 
							$config['max_size'] = '3072'; 
							$config['max_width']  = '200'; 
							$config['max_height']  = '100'; 
							$config['file_name'] = $nmfile;
					
							$this->upload->initialize($config);
							if($_FILES['ttd']['name'])
							{
								if ($this->upload->do_upload('ttd')) {
									$gbr = $this->upload->data();
									$img = $gbr['file_name'];
								}else{
									$Error .='Gambar Gagal di Upload';
								}
							}
							// upload
						}
				}
				
				
				if($Error == ''){
					
					// query
					$q = "Insert into ttd_pengesah(satuan_organisasi_id,unit_kerja_id,ttd_pengesah_jabatan,ttd_pengesah_nama,ttd_pengesah_nip,ttd_pengesah_gambar,ttd_pengesah_status,user_id)
						values('".$satker."','".$unitkerja."','".$jabatan."','".$nama."','".$nip."','".$img."','".$status."','".$userid."')";
					$this->master_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function edit_jabatan_pengesah()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$id = $this->input->post('id');
				$satker = $this->input->post('satker');
				$unitkerja = $this->input->post('unitkerja');
				$nama = $this->input->post('nama');
				$jabatan = $this->input->post('jabatan');
				$status = $this->input->post('status');
				$fileori = $this->input->post('fileori');
				
				// validasi null
				if($jabatan == '')$Error .='Jabatan Harus Di Isi';
				if($_FILES['ttd']['tmp_name'] != ''){
						$ext = pathinfo($_FILES['ttd']['name'], PATHINFO_EXTENSION);
						$size = $_FILES['ttd']['size'];
						if($ext != 'jpg'){
							$Error .= 'File Harus .jpg<br>';
						}else{
							//upload
							$img = '';
							$this->load->library('upload');
							$nmfile = 'ttd_'.time();
							$config['upload_path'] = './assets/media/ttd/';
							$config['allowed_types'] = 'jpg'; 
							$config['max_size'] = '3072'; 
							$config['max_width']  = '200'; 
							$config['max_height']  = '100'; 
							$config['file_name'] = $nmfile;
					
							$this->upload->initialize($config);
							if($_FILES['ttd']['name'])
							{
								if ($this->upload->do_upload('ttd')) {
									$gbr = $this->upload->data();
									$img = $gbr['file_name'];
								}else{
									$Error .='Gambar Gagal di Upload';
								}
							}
							// upload
						}
				}
				
				if($Error == ''){
					$img = '';
					if($_FILES['ttd']['tmp_name'] != ''){
							// delete file
							$query = "Select ttd_pengesah_gambar from ttd_pengesah where ttd_pengesah_id='$id'";
							$result = $this->master_m->query_manual($query);
							$file = '';
							
							   if($result)
							   {
								 $sess_array = array();
								 foreach($result->result_array() as $row)
								 { 
									$file = $row['ttd_pengesah_gambar'];
									
									if($file != ''){
									unlink($path.$file);
									}
								 }
							   }
					}else if($fileori != ''){
						$img = $fileori;
					}
					
					
					
					// query
					$q = "update ttd_pengesah set satuan_organisasi_id='".$satker."', unit_kerja_id='".$unitkerja."', ttd_pengesah_jabatan='".$jabatan."', ttd_pengesah_gambar='".$img."', ttd_pengesah_status='".$status."'  where ttd_pengesah_id=$id";
					$this->master_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	function delete_jabatan_pengesah()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$id = $this->uri->segment(3);
				// delete file
				$query = "Select ttd_pengesah_gambar from ttd_pengesah where ttd_pengesah_id='$id'";
				$result = $this->master_m->query_manual($query);
				$file = '';
				
				   if($result)
				   {
					 $sess_array = array();
					 foreach($result->result_array() as $row)
					 { 
						$file = $row['ttd_pengesah_gambar'];
						
						if($file != ''){
						unlink($path.$file);
						}
					 }
				   }
				   
				// query
				$q = "delete from ttd_pengesah where ttd_pengesah_id=$id";
				$this->master_m->query_manual($q);
				
					
				redirect('master/jabatan_pengesah', 'refresh');
		}	
			
	}
/* ====================================================================================================================================================== */


/* ====================================================================================================================================================== */
	function add_kategori_sop()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$nama = $this->input->post('nama');
				$status = $this->input->post('status');
				
				// validasi null
				if($nama == '') {
						$Error .='Nama Kategori Harus Di Isi';
				}else{
						$count = $this->master_m->cek_null('kategori_sop','kategori_nama',$nama);
						if($count >= 1) $Error .='Nama Kategori Double';
				}
				
				if($Error == ''){
					
					// query
					$q = "Insert into kategori_sop(kategori_nama,kategori_status) 
						values('".$nama."','".$status."')";
					$this->master_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function edit_kategori_sop()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$id = $this->input->post('id');
				$nama = $this->input->post('nama');
				$status = $this->input->post('status');
				
				// validasi null
				if($nama == '') $Error .='Nama Kategori Harus Di Isi';
				
				if($Error == ''){
					
					// query
					$q = "update kategori_sop set kategori_nama='".$nama."', kategori_status='".$status."' where kategori_id=$id";
					$this->master_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function delete_kategori_sop()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$id = $this->uri->segment(3);
				
				// query
				$q = "delete from kategori_sop where kategori_id=$id";
				$this->master_m->query_manual($q);
				
					
				redirect('master/jenis_sop', 'refresh');
		}	
			
	}
/* ====================================================================================================================================================== */

	

/* ====================================================================================================================================================== */
	function add_pertanyaan()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$pertanyaan = $this->input->post('pertanyaan');
				$status = $this->input->post('status');
				
				// validasi null
				if($pertanyaan == '') {
						$Error .='Pertanyaan Harus Di Isi';
				}else{
						$count = $this->master_m->cek_null('pertanyaan','pertanyaan_isi',$pertanyaan);
						if($count >= 1) $Error .='Isi Pertnyaan Double';
				}
				
				if($Error == ''){
					
					// query
					$q = "Insert into pertanyaan(pertanyaan_isi,pertanyaan_status) 
						values('".$pertanyaan."','".$status."')";
					$this->master_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function edit_pertanyaan()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$id = $this->input->post('id');
				$pertanyaan = $this->input->post('pertanyaan');
				$status = $this->input->post('status');
				
				// validasi null
				if($pertanyaan == '') $Error .='Pertnyaan Harus Di Isi';
				
				if($Error == ''){
					
					// query
					$q = "update pertanyaan set pertanyaan_isi='".$pertanyaan."', pertanyaan_status='".$status."' where pertanyaan_id=$id";
					$this->master_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function delete_pertanyaan()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
		
				$Error = '';
				$id = $this->uri->segment(3);
				
				// query
				$q = "delete from pertanyaan where pertanyaan_id=$id";
				$this->master_m->query_manual($q);
				
					
				redirect('master/pertanyaan', 'refresh');
		}	
			
	}
/* ====================================================================================================================================================== */

	
}
