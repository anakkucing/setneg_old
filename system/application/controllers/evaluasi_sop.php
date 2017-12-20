<?php

class evaluasi_sop extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('main'));	
		$this->load->library(array('alias'));
		session_start();	
	}
	
	
	function index()
	{			
		 $ip      = $_SERVER['REMOTE_ADDR'];
		 $tanggal = date("Y-m-d");
		 $waktu   = time();
		 $cek = $this->main->cek_pengunjung($ip,$tanggal);
		 if($cek == 0){
			 $this->main->insert_pengunjung($ip,$tanggal);
		 }else{
			 $this->main->update_pengunjung($ip,$tanggal);
		 }
		 
		 
		 $data['title'] = 'Evaluasi SOP';
		 $data['evaluasi'] = $this->main->on_of_evaluasi();
		 $data['pengunjung'] = $this->main->pengunjung_hariini($tanggal);
		 foreach ($this->main->pengunjung_total()->result_array() as $row) 
		 {
			$data['totalpengunjung'] = $row['total'];
		 }
		 
		 $data['tentangkami'] = $this->main->edit_table('post_content','content_menu','tentang_kami');
		 $data['agenda'] = $this->main->edit_table('post_content','content_menu','agenda');
		 $this->load->view('front/header',$data);
		 $this->load->view('front/evaluasi',$data);
		 $this->load->view('front/footer',$data);
	}
	
	
	function nilai()
	{			
		 $ip      = $_SERVER['REMOTE_ADDR'];
		 $tanggal = date("Y-m-d");
		 $waktu   = time();
		 $cek = $this->main->cek_pengunjung($ip,$tanggal);
		 if($cek == 0){
			 $this->main->insert_pengunjung($ip,$tanggal);
		 }else{
			 $this->main->update_pengunjung($ip,$tanggal);
		 }
		 
		 $alias = $this->uri->segment(3);
		 $data['evaluasi'] = $this->main->on_of_evaluasi();
		 $data['pengunjung'] = $this->main->pengunjung_hariini($tanggal);
		 $data['pertanyaan'] = $this->main->select_table('pertanyaan','pertanyaan_id');
		 $data['cekpenilaian'] = $this->main->cekpenilaian($ip,$tanggal,$alias);
		 foreach ($this->main->pengunjung_total()->result_array() as $row) 
		 {
			$data['totalpengunjung'] = $row['total'];
		 }
		 
		 $data['tentangkami'] = $this->main->edit_table('post_content','content_menu','tentang_kami');
		 $data['agenda'] = $this->main->edit_table('post_content','content_menu','agenda');
		 $this->load->view('front/header',$data);
		 $this->load->view('front/evaluasi_nilai',$data);
		 $this->load->view('front/footer',$data);
	}
	
}
