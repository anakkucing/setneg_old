<?php

class Act_front extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('front_m'));	
		$this->load->library(array('alias','encrypt'));
		session_start();	
	}
	

	/* ====================================================================================================================================================== */
	function add_slide()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$judul = $this->input->post('judul');
				$isi = $this->input->post('isi');
				
				
				// validasi null
				if($judul == '') $Error .='Judul Harus Di Isi';
				
				//upload
				$this->load->library('upload');
				$nmfile = 'slide_'.time();
				$config['upload_path'] = './assets/media/slide/';
				$config['allowed_types'] = 'jpg'; 
				$config['max_size'] = '3072'; 
				$config['max_width']  = '5000'; 
				$config['max_height']  = '5000'; 
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
					// query
					$q = "Insert into slide(slide_judul,slide_isi,slide_gambar) 
						values('".$judul."','".$isi."','".$img."')";
					$this->front_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	
	function edit_slide()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$id = $this->input->post('id');
				$judul = $this->input->post('judul');
				$isi = $this->input->post('isi');
				$gambar = $this->input->post('gambar');
				
				
				// validasi null
				if($judul == '') $Error .='Judul Harus Di Isi';
				
				//upload
				$this->load->library('upload');
				$nmfile = 'slide_'.time();
				$config['upload_path'] = './assets/media/slide/';
				$config['allowed_types'] = 'jpg'; 
				$config['max_size'] = '3072'; 
				$config['max_width']  = '5000'; 
				$config['max_height']  = '5000'; 
				$config['file_name'] = $nmfile;
		
				$this->upload->initialize($config);
				if($_FILES['fileupload']['name'])
				{
					if ($this->upload->do_upload('fileupload')) {
						$gbr = $this->upload->data();
						$img = $gbr['file_name'];
						$path = "assets/media/slide/";
						unlink($path.$gambar);
					}else{
						$Error .='Gambar Gagal di Upload';
					}
				}else{
					$img = $gambar;
				}
				// upload
				
				if($Error == ''){
					
					// query
					$q = "update slide set slide_judul='".$judul."', slide_isi='".$isi."', slide_gambar='".$img."' where slide_id=$id";
					$this->front_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function delete_slide()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$id = $this->uri->segment(3);
				$gambar = $this->front_m->get_id('slide','slide_gambar','slide_id',$id);
				$path = "assets/media/slide/";
				if($gambar) unlink($path.$gambar);
				
				// query
				$q = "delete from slide where slide_id=$id";
				$this->front_m->query_manual($q);
				
				redirect('front/slide', 'refresh');
		}	
			
	}
	/* ====================================================================================================================================================== */	
	
	

	/* ====================================================================================================================================================== */
	function add_post()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$menu = $this->input->post('menu');
				$nama = $this->input->post('nama');
				$isi = $this->input->post('isi');
				$url = $this->alias->generate_alias($this->input->post('nama'));
				
				
				// validasi null
				if($nama == '') $Error .='Nama Menu Harus Di Isi';
				
				if($Error == ''){
					// query
					$q = "Insert into post_content(content_nama,content_isi,content_menu,content_alias) 
						values('".$nama."','".$isi."','".$menu."','".$url."')";
					$this->front_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	
	function edit_post()
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
				$url = $this->alias->generate_alias($this->input->post('nama'));	
				$isi = $this->input->post('isi');
				
				
				// validasi null
				if($nama == '') $Error .='Nama Menu Harus Di Isi';
				
				if($Error == ''){
					
					// query
					$q = "update post_content set content_nama='".$nama."', content_isi='".$isi."', content_alias='".$url."' where content_id=$id";
					$this->front_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function delete_post()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$id = $this->uri->segment(3);
				$url = $this->uri->segment(4);
				
				// query
				$q = "delete from post_content where content_id=$id";
				$this->front_m->query_manual($q);
				
				redirect('front/'.$url.'', 'refresh');
		}	
			
	}
	/* ====================================================================================================================================================== */	
	
	

	/* ====================================================================================================================================================== */
	function add_pengumuman()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$judul = $this->input->post('judul');
				$tanggal = $this->input->post('tanggal');
				$isi = $this->input->post('isi');
				$url = $this->alias->generate_alias($this->input->post('judul'));
				
				
				// validasi null
				if($judul == '') $Error .='Judul Harus Di Isi';
				if($tanggal == '') $Error .='Tanggal Harus Di Isi';
				if($isi == '') $Error .='Isi Harus Di Isi';
				//upload
				$this->load->library('upload');
				$nmfile = 'pengumuman_'.time();
				$config['upload_path'] = './assets/media/pengumuman/';
				$config['allowed_types'] = 'jpg'; 
				$config['max_size'] = '3072'; 
				$config['max_width']  = '1000'; 
				$config['max_height']  = '1000'; 
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
					// query
					$q = "Insert into pengumuman(pengumuman_judul,pengumuman_gambar,pengumuman_isi,pengumuman_tanggal,pengumuman_penulis,pengumuman_alias) 
						values('".$judul."','".$img."','".$isi."','".$tanggal."','".$fullname."','".$url."')";
					$this->front_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	
	function edit_pengumuman()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$id = $this->input->post('id');
				$judul = $this->input->post('judul');
				$tanggal = $this->input->post('tanggal');
				$isi = $this->input->post('isi');
				$gambar = $this->input->post('gambar');
				$url = $this->alias->generate_alias($this->input->post('judul'));
				
				
				// validasi null
				if($judul == '') $Error .='Judul Harus Di Isi';
				if($tanggal == '') $Error .='Tanggal Harus Di Isi';
				if($isi == '') $Error .='Isi Harus Di Isi';
				//upload
				$this->load->library('upload');
				$nmfile = 'pengumuman_'.time();
				$config['upload_path'] = './assets/media/pengumuman/';
				$config['allowed_types'] = 'jpg'; 
				$config['max_size'] = '3072'; 
				$config['max_width']  = '1000'; 
				$config['max_height']  = '1000'; 
				$config['file_name'] = $nmfile;
		
				$this->upload->initialize($config);
				if($_FILES['fileupload']['name'])
				{
					if ($this->upload->do_upload('fileupload')) {
						$gbr = $this->upload->data();
						$img = $gbr['file_name'];
						$path = "assets/media/pengumuman/";
						unlink($path.$gambar);
					}else{
						$Error .='Gambar Gagal di Upload';
					}
				}else{
					$img = $gambar;
				}
				// upload
				
				
				if($Error == ''){
					
					// query
					$q = "update pengumuman set pengumuman_judul='".$judul."', pengumuman_gambar='".$img."', pengumuman_isi='".$isi."', pengumuman_tanggal='".$tanggal."', pengumuman_penulis='".$fullname."', pengumuman_alias='".$url."' where pengumuman_id=$id";
					$this->front_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function delete_pengumuman()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$id = $this->uri->segment(3);
				$url = $this->uri->segment(4);
				$gambar = $this->front_m->get_id('pengumuman','pengumuman_gambar','pengumuman_id',$id);
				$path = "assets/media/pengumuman/";
				if($gambar) unlink($path.$gambar);
				
				// query
				$q = "delete from pengumuman where pengumuman_id=$id";
				$this->front_m->query_manual($q);
				
				redirect('front/pengumuman', 'refresh');
		}	
			
	}
	/* ====================================================================================================================================================== */	
	
	

	/* ====================================================================================================================================================== */
	function add_kegiatan()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$kategori = $this->input->post('kategori');
				$nama = $this->input->post('nama');
				$tanggal = date("Y-m-d", strtotime($this->input->post('tanggal')));
				$isi = $this->input->post('isi');
				
				
				// validasi null
				if($nama == '') $Error .='Nama Kegiatan Harus Di Isi';
				if($tanggal == '') $Error .='Tanggal Harus Di Isi';
				if($isi == '') $Error .='Isi Harus Di Isi';
				//upload
				$this->load->library('upload');
				$nmfile = 'kegiatan_'.time();
				$config['upload_path'] = './assets/media/kegiatan/';
				$config['allowed_types'] = 'jpg'; 
				$config['max_size'] = '3072'; 
				$config['max_width']  = '1000'; 
				$config['max_height']  = '1000'; 
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
					// query
					$q = "Insert into kegiatan(kegiatan_kategori,kegiatan_nama,kegiatan_desc,kegiatan_gambar,kegiatan_tanggal) 
						values('".$kategori."','".$nama."','".$isi."','".$img."','".$tanggal."')";
					$this->front_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	
	function edit_kegiatan()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$id = $this->input->post('id');
				$kategori = $this->input->post('kategori');
				$nama = $this->input->post('nama');
				$tanggal = date("Y-m-d", strtotime($this->input->post('tanggal')));
				$isi = $this->input->post('isi');
				$gambar = $this->input->post('gambar');
				
				
				// validasi null
				if($nama == '') $Error .='Nama Kegiatan Harus Di Isi';
				if($tanggal == '') $Error .='Tanggal Harus Di Isi';
				if($isi == '') $Error .='Isi Harus Di Isi';
				//upload
				$this->load->library('upload');
				$nmfile = 'pengumuman_'.time();
				$config['upload_path'] = './assets/media/kegiatan/';
				$config['allowed_types'] = 'jpg'; 
				$config['max_size'] = '3072'; 
				$config['max_width']  = '1000'; 
				$config['max_height']  = '1000'; 
				$config['file_name'] = $nmfile;
		
				$this->upload->initialize($config);
				if($_FILES['fileupload']['name'])
				{
					if ($this->upload->do_upload('fileupload')) {
						$gbr = $this->upload->data();
						$img = $gbr['file_name'];
						$path = "assets/media/kegiatan/";
						unlink($path.$gambar);
					}else{
						$Error .='Gambar Gagal di Upload';
					}
				}else{
					$img = $gambar;
				}
				// upload
				
				
				if($Error == ''){
					
					// query
					$q = "update kegiatan set kegiatan_nama='".$nama."', kegiatan_gambar='".$img."', kegiatan_desc='".$isi."', kegiatan_tanggal='".$tanggal."', kegiatan_kategori='".$kategori."' where kegiatan_id=$id";
					$this->front_m->query_manual($q);
					
					echo '1';
					
				}else{
					
					echo $Error;
					
				}
		}	
			
	}
	
	function delete_kegiatan()
	{
		if($this->session->userdata('setneg_in'))
		{
				$session_data = $this->session->userdata('setneg_in');
				$userid = $session_data['userid'];		
				$username = $session_data['username'];
				$fullname = $session_data['fullname'];
		
				$Error = '';
				$id = $this->uri->segment(3);
				$url = $this->uri->segment(4);
				$gambar = $this->front_m->get_id('kegiatan','kegiatan_gambar','kegiatan_id',$id);
				$path = "assets/media/kegiatan/";
				if($gambar) unlink($path.$gambar);
				
				// query
				$q = "delete from kegiatan where kegiatan_id=$id";
				$this->front_m->query_manual($q);
				
				redirect('front/kegiatan', 'refresh');
		}	
			
	}
	/* ====================================================================================================================================================== */	
	
}
