<?php
ini_set('date.timezone', 'Asia/Jakarta');

class Datatable extends Controller {

	function __construct()
	{
		parent::Controller();
		$this->load->helper(array('url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('main','front_m','settings_m','master_m','sop_m','notif_m','komunikasi_m'));	
		session_start();
	}
	
	
	
/* ====================================================================================================================================================== */	
	function data_slide()
	{
		$result = $this->front_m->get_datatables('dataslide'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = '<img src="'.base_url().'assets/media/slide/'.$row->slide_gambar.'" width="70">';
			$rel[] = $row->slide_judul;
			$rel[] = '<a href="'.base_url().'front/slide/edit/'.$row->slide_id.'" title="Edit">
						<span class="btn btn-xs btn-warning"><i class="icon wb-pencil" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="'.base_url().'act_front/delete_slide/'.$row->slide_id.'" class="del'.$row->slide_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						var elems = document.getElementsByClassName(\'del'.$row->slide_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>
					  ';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->front_m->count_all('slide'), //nama tabel
				"recordsFiltered" => $this->front_m->count_filtered('dataslide'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function data_tentangkami()
	{
		$result = $this->front_m->get_datatables('datatentangkami'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->content_nama;
			$rel[] = '<a href="'.base_url().'front/tentang_kami/edit/'.$row->content_id.'" title="Edit">
						<span class="btn btn-xs btn-warning"><i class="icon wb-pencil" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="'.base_url().'act_front/delete_post/'.$row->content_id.'/tentang_kami" class="del'.$row->content_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						var elems = document.getElementsByClassName(\'del'.$row->content_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>
					  ';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->front_m->count_all('vwtentang_kami'), //nama tabel
				"recordsFiltered" => $this->front_m->count_filtered('datatentangkami'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function data_agenda()
	{
		$result = $this->front_m->get_datatables('dataagenda'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->content_nama;
			$rel[] = '<a href="'.base_url().'front/agenda/edit/'.$row->content_id.'" title="Edit">
						<span class="btn btn-xs btn-warning"><i class="icon wb-pencil" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="'.base_url().'act_front/delete_post/'.$row->content_id.'/agenda" class="del'.$row->content_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						var elems = document.getElementsByClassName(\'del'.$row->content_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>
					  ';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->front_m->count_all('vwagenda'), //nama tabel
				"recordsFiltered" => $this->front_m->count_filtered('dataagenda'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function data_pengumuman()
	{
		$result = $this->front_m->get_datatables('datapengumuman'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = '<img src="'.base_url().'assets/media/pengumuman/'.$row->pengumuman_gambar.'" width="70">';
			$rel[] = $row->pengumuman_judul;
			$rel[] = $row->pengumuman_tanggal;
			$rel[] = '<a href="'.base_url().'front/pengumuman/edit/'.$row->pengumuman_id.'" title="Edit">
						<span class="btn btn-xs btn-warning"><i class="icon wb-pencil" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="'.base_url().'act_front/delete_pengumuman/'.$row->pengumuman_id.'" class="del'.$row->pengumuman_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						var elems = document.getElementsByClassName(\'del'.$row->pengumuman_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>
					  ';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->front_m->count_all('pengumuman'), //nama tabel
				"recordsFiltered" => $this->front_m->count_filtered('datapengumuman'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function data_kegiatan()
	{
		$result = $this->front_m->get_datatables('datakegiatan'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = '<img src="'.base_url().'assets/media/kegiatan/'.$row->kegiatan_gambar.'" width="70">';
			$rel[] = $row->kegiatan_nama;
			$rel[] = $row->kegiatan_tanggal;
			$rel[] = '<a href="'.base_url().'front/kegiatan/edit/'.$row->kegiatan_id.'" title="Edit">
						<span class="btn btn-xs btn-warning"><i class="icon wb-pencil" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="'.base_url().'act_front/delete_kegiatan/'.$row->kegiatan_id.'" class="del'.$row->kegiatan_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						var elems = document.getElementsByClassName(\'del'.$row->kegiatan_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>
					  ';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->front_m->count_all('kegiatan'), //nama tabel
				"recordsFiltered" => $this->front_m->count_filtered('datakegiatan'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */




/* ====================================================================================================================================================== */	
	function data_usergroup()
	{
		$result = $this->settings_m->get_datatables('usergroup'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->user_group_name;
			$rel[] = ($row->user_group_status == 'Y' ? '<span class="badge badge-md badge-success" style="color:#fff; font-size:11px">Aktif</span>' : '<span class="badge badge-md badge-danger" style="color:#fff; font-size:11px">Nonaktif</span>');
			$rel[] = '<a href="'.base_url().'settings/user_group/edit/'.$row->user_group_id.'" title="Edit">
						<span class="btn btn-xs btn-warning"><i class="icon wb-pencil" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <!--<a href="'.base_url().'act_settings/delete_usergroup/'.$row->user_group_id.'" class="del'.$row->user_group_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>-->
					  
					  
					  <script type="text/javascript">
						var elems = document.getElementsByClassName(\'del'.$row->user_group_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>
					  ';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->settings_m->count_all('user_group'), //nama tabel
				"recordsFiltered" => $this->settings_m->count_filtered('usergroup'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function data_usermanager()
	{
		$result = $this->settings_m->get_datatables('usermanager'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->user_name;
			$rel[] = $row->satuan_organisasi_nama;
			$rel[] = $row->unit_kerja_nama;
			$rel[] = $row->user_group_name;
			$rel[] = ($row->user_status == 'Y' ? '<span class="badge badge-md badge-success" style="color:#fff; font-size:11px">Aktif</span>' : '<span class="badge badge-md badge-danger" style="color:#fff; font-size:11px">Nonaktif</span>');
			$rel[] = '<a href="'.base_url().'settings/user_manager/edit/'.$row->user_id.'" title="Edit">
						<span class="btn btn-xs btn-warning"><i class="icon wb-pencil" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="'.base_url().'act_settings/delete_usermanager/'.$row->user_id.'" class="del'.$row->user_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						var elems = document.getElementsByClassName(\'del'.$row->user_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script> ';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->settings_m->count_all('vwuser'), //nama tabel
				"recordsFiltered" => $this->settings_m->count_filtered('usermanager'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function data_satuan_organisasi()
	{
		$result = $this->master_m->get_datatables('datasatuanorganisasi'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->satuan_organisasi_nama;
			$rel[] = '<a href="'.base_url().'master/satuan_organisasi/edit/'.$row->satuan_organisasi_id.'" title="Edit">
						<span class="btn btn-xs btn-warning"><i class="icon wb-pencil" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="'.base_url().'act_master/delete_satuan_organisasi/'.$row->satuan_organisasi_id.'" class="del'.$row->satuan_organisasi_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						var elems = document.getElementsByClassName(\'del'.$row->satuan_organisasi_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>
					  ';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->master_m->count_all('satuan_organisasi'), //nama tabel
				"recordsFiltered" => $this->master_m->count_filtered('datasatuanorganisasi'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function data_unitkerja()
	{
		$result = $this->master_m->get_datatables('dataunitkerja'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->satuan_organisasi_nama;
			$rel[] = $row->unit_kerja_nama;
			$rel[] = '<a href="'.base_url().'master/unit_kerja/edit/'.$row->unit_kerja_id.'" title="Edit">
						<span class="btn btn-xs btn-warning"><i class="icon wb-pencil" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="'.base_url().'act_master/delete_unit_kerja/'.$row->unit_kerja_id.'" class="del'.$row->unit_kerja_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						var elems = document.getElementsByClassName(\'del'.$row->unit_kerja_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>
					  ';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->master_m->count_all('vwunit_kerja'), //nama tabel
				"recordsFiltered" => $this->master_m->count_filtered('dataunitkerja'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function data_unitbagian()
	{
		$result = $this->master_m->get_datatables('dataunitbagian'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->satuan_organisasi_nama;
			$rel[] = $row->unit_kerja_nama;
			$rel[] = $row->bagian_nama;
			$rel[] = '<a href="'.base_url().'master/bagian/edit/'.$row->bagian_id.'" title="Edit">
						<span class="btn btn-xs btn-warning"><i class="icon wb-pencil" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="'.base_url().'act_master/delete_bagian/'.$row->bagian_id.'" class="del'.$row->bagian_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						var elems = document.getElementsByClassName(\'del'.$row->bagian_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>
					  ';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->master_m->count_all('vwbagian'), //nama tabel
				"recordsFiltered" => $this->master_m->count_filtered('dataunitbagian'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function data_jabatanpengesah()
	{
		$session_data = $this->session->userdata('setneg_in');
		$groupid = $session_data['groupid'];
		$userid = $session_data['userid'];
		
		$where = ($groupid == 10 ? 'where user_id='.$userid.'' : '');
		$result = $this->master_m->get_datatables('datajabatanpengesah'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->ttd_pengesah_nama;
			$rel[] = $row->ttd_pengesah_jabatan;
			$rel[] = '<img src="'.base_url().'assets/media/ttd/'.$row->ttd_pengesah_gambar.'" width="70">';
			$rel[] = ($row->ttd_pengesah_status == 'Y' ? '<span class="badge badge-md badge-success" style="color:#fff; font-size:11px">Aktif</span>' : '<span class="badge badge-md badge-danger" style="color:#fff; font-size:11px">Nonktif</span>');
			$rel[] = '<a href="'.base_url().'master/jabatan_pengesah/edit/'.$row->ttd_pengesah_id.'" title="Edit">
						<span class="btn btn-xs btn-warning"><i class="icon wb-pencil" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="'.base_url().'act_master/delete_jabatan_pengesah/'.$row->ttd_pengesah_id.'" class="del'.$row->ttd_pengesah_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						var elems = document.getElementsByClassName(\'del'.$row->ttd_pengesah_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>
					  ';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->master_m->count_all('(select * from ttd_pengesah '.$where.') as ttd_pengesah'), //nama tabel
				"recordsFiltered" => $this->master_m->count_filtered('datajabatanpengesah'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function data_jenissop()
	{
		$result = $this->master_m->get_datatables('datajenissop'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->kategori_nama;
			$rel[] = ($row->kategori_status == 'Y' ? '<span class="badge badge-md badge-success" style="color:#fff; font-size:11px">Aktif</span>' : '<span class="badge badge-md badge-danger" style="color:#fff; font-size:11px">Nonaktif</span>');
			$rel[] = '<a href="'.base_url().'master/jenis_sop/edit/'.$row->kategori_id.'" title="Edit">
						<span class="btn btn-xs btn-warning"><i class="icon wb-pencil" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="'.base_url().'act_master/delete_kategori_sop/'.$row->kategori_id.'" class="del'.$row->kategori_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						var elems = document.getElementsByClassName(\'del'.$row->kategori_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>
					  ';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->master_m->count_all('kategori_sop'), //nama tabel
				"recordsFiltered" => $this->master_m->count_filtered('datajenissop'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function data_pertanyaan()
	{
		$result = $this->master_m->get_datatables('datapertanyaan'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->pertanyaan_isi;
			$rel[] = ($row->pertanyaan_status == 'Y' ? '<span class="badge badge-md badge-success" style="color:#fff; font-size:11px">Aktif</span>' : '<span class="badge badge-md badge-danger" style="color:#fff; font-size:11px">Nonktif</span>');
			$rel[] = '<a href="'.base_url().'master/pertanyaan/edit/'.$row->pertanyaan_id.'" title="Edit">
						<span class="btn btn-xs btn-warning"><i class="icon wb-pencil" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="'.base_url().'act_master/delete_pertanyaan/'.$row->pertanyaan_id.'" class="del'.$row->pertanyaan_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						var elems = document.getElementsByClassName(\'del'.$row->pertanyaan_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>
					  ';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->master_m->count_all('pertanyaan'), //nama tabel
				"recordsFiltered" => $this->master_m->count_filtered('datapertanyaan'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function data_simbol()
	{
		$result = $this->master_m->get_datatables('datasimbol'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->simbol_nama;
			$rel[] = '<img src="'.base_url().'assets/media/simbol/'.$row->simbol_img.'" width="100">';
			$rel[] = '<a href="#" title="Edit">
						<span class="btn btn-xs btn-warning"><i class="icon wb-pencil" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="#" class="del'.$row->simbol_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						var elems = document.getElementsByClassName(\'del'.$row->simbol_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>
					  ';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->master_m->count_all('simbol'), //nama tabel
				"recordsFiltered" => $this->master_m->count_filtered('datasimbol'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function data_sop()
	{
		$session_data = $this->session->userdata('setneg_in');
		$groupid = $session_data['groupid'];
		$userid = $session_data['userid'];
		$unitkerjaid = $session_data['unitkerjaid'];
		
		$where = ($groupid == 9 ? 'where user_id='.$userid.'' : ($groupid == 10 ? 'where unit_kerja_id='.$unitkerjaid.'' : ''));
		$result = $this->sop_m->get_datatables('datasop'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->sop_no;
			$rel[] = $row->sop_nama;
			$rel[] = $row->sop_tgl_pembuatan;
			$rel[] = ($row->sop_status == 'DRAFT' ? '<span class="badge badge-md badge-danger" style="color:#fff; font-size:11px">'.$row->sop_status.'</span>' : '<span class="badge badge-md badge-success" style="color:#fff; font-size:11px">'.$row->sop_status.'</span>');
			$rel[] = ($row->sop_step == 'admin' ? '<span class="badge badge-md badge-warning" style="color:#fff; font-size:11px">'.$row->sop_step.'</span>' : ($row->sop_step == 'pengesah' ? '<span class="badge badge-md badge-success" style="color:#fff; font-size:11px">'.$row->sop_step.'</span>' : '<span class="badge badge-md badge-danger" style="color:#fff; font-size:11px">Penyusun</span>'));
			$rel[] = ($row->sop_update_file == '' ? '<span class="badge badge-md badge-info" style="color:#fff; font-size:11px">Auto</span>' : '<span class="badge badge-md badge-warning" style="color:#fff; font-size:11px">Manual</span>');
					$action ='<div class="btn-group">
						  <button type="button" class="btn btn-icon btn-primary btn-xs dropdown-toggle" data-toggle="dropdown"
						  aria-expanded="false" aria-hidden="true">
							Action
						  </button>
						  <div class="dropdown-menu" role="menu" style="font-size:12px">
							<a class="dropdown-item" href="'.base_url().'sop/penyusunan_sop/lihat/'.$row->sop_alias.'" role="menuitem">
							  <i class="icon wb-eye" aria-hidden="true"></i> Lihat
							</a>';
							if($row->sop_step == ''){
								$action .='<a class="dropdown-item" href="'.base_url().'sop/penyusunan_sop/edit/'.$row->sop_alias.'" role="menuitem">
								  <i class="icon wb-pencil" aria-hidden="true"></i> Edit
								</a>
								<a class="dropdown-item" href="'.base_url().'sop/penyusunan_sop/upload/'.$row->sop_alias.'" role="menuitem">
								  <i class="icon wb-upload" aria-hidden="true"></i> Upload
								</a>
								<a class="dropdown-item del'.$row->sop_alias.'" href="#" role="menuitem">
								  <i class="icon wb-trash" aria-hidden="true"></i> Delete
								</a>';
							}
							$action .='<hr>';
							if($row->sop_status == 'DISAHKAN'){
								$action .='<a class="dropdown-item" href="'.base_url().'sop/revisi_sop/ajukan/'.$row->sop_alias.'" role="menuitem">
								  <i class="icon wb-refresh" aria-hidden="true"></i> Revisi
								</a>';
							}
							if($row->sop_step == ''){
								$action .='<a class="dropdown-item kirim'.$row->sop_alias.'" href="'.base_url().'act_sop/kirim_sop/'.$row->sop_alias.'" role="menuitem">
								  <i class="icon wb-check" aria-hidden="true"></i> Kirim
								</a>';
							}
						  $action .='</div>
						</div>
					  
					  <script type="text/javascript">
						var elem = document.getElementsByClassName(\'kirim'.$row->sop_alias.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dikirim ?\')) e.preventDefault();
						};
						for (var i = 0, l = elem.length; i < l; i++) {
							elem[i].addEventListener(\'click\', confirmIt, false);
						}
						
						var elems = document.getElementsByClassName(\'del'.$row->sop_alias.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>';
			
			$rel[] = $action;		
			
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->sop_m->count_all('(select * from vwsop '.$where.') as vwsop'), //nama tabel
				"recordsFiltered" => $this->sop_m->count_filtered('datasop'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function revisi_sop()
	{
		$session_data = $this->session->userdata('setneg_in');
		$groupid = $session_data['groupid'];
		$userid = $session_data['userid'];
		$unitkerjaid = $session_data['unitkerjaid'];
		
		$where = ($groupid == 9 ? 'where user_id='.$userid.'' : ($groupid == 10 ? 'where unit_kerja_id='.$unitkerjaid.'' : ''));
		$result = $this->sop_m->get_datatables('revisisop'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->sop_no;
			$rel[] = $row->sop_nama;
			$rel[] = tgl_indo2($row->revisi_tanggal);
			$rel[] = ($row->revisi_status == 'pending' ? '<span class="badge badge-md badge-warning" style="color:#fff; font-size:11px">Pending</span>' : ( $row->revisi_status == 'diterima' ? '<span class="badge badge-md badge-success" style="color:#fff; font-size:11px">Diterima</span>' : ($row->revisi_status == 'ditolak'  ? '<span class="badge badge-md badge-danger" style="color:#fff; font-size:11px">Ditolak</span>' : '')));
			$rel[] = '<a href="'.base_url().'sop/revisi_sop/lihat/'.$row->sop_alias.'/'.$row->revisi_id.'" title="Lihat">
						<span class="btn btn-xs btn-info"><i class="icon wb-eye" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->sop_m->count_all('(select * from vwrevisi '.$where.') as vwrevisi'), //nama tabel
				"recordsFiltered" => $this->sop_m->count_filtered('revisisop'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function pencarian_sop()
	{
		$session_data = $this->session->userdata('setneg_in');
		$groupid = $session_data['groupid'];
		$userid = $session_data['userid'];
		$unitkerjaid = $session_data['unitkerjaid'];
		
		$where = ($groupid == 9 ? 'where user_id='.$userid.'' : ($groupid == 10 ? 'where unit_kerja_id='.$unitkerjaid.'' : ''));
		$result = $this->sop_m->get_datatables('datasop'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->sop_no;
			$rel[] = $row->sop_nama;
			$rel[] = $row->sop_tgl_pembuatan;
			$rel[] = ($row->sop_update_file == '' ? '<span class="badge badge-md badge-info" style="color:#fff; font-size:11px">Auto</span>' : '<span class="badge badge-md badge-warning" style="color:#fff; font-size:11px">Manual</span>');
			$rel[] = '<a href="'.base_url().'sop/pencarian_sop/lihat/'.$row->sop_alias.'" title="Lihat">
						<span class="btn btn-xs btn-info"><i class="icon wb-eye" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->sop_m->count_all('(select * from vwsop '.$where.') as vwsop'), //nama tabel
				"recordsFiltered" => $this->sop_m->count_filtered('datasop'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function pengesahan_sop()
	{
		$session_data = $this->session->userdata('setneg_in');
		$groupid = $session_data['groupid'];
		$userid = $session_data['userid'];
		$unitkerjaid = $session_data['unitkerjaid'];
		
		$where = ($groupid == 9 ? 'and user_id='.$userid.'' : ($groupid == 10 ? 'and unit_kerja_id='.$unitkerjaid.'' : ''));
		$result = $this->sop_m->get_datatables('pengesahsop'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->sop_no;
			$rel[] = $row->sop_nama;
			$rel[] = $row->sop_tgl_pembuatan;
			$rel[] = '<a href="'.base_url().'sop/pengesahan_sop/lihat/'.$row->sop_alias.'" title="Lihat">
						<span class="btn btn-xs btn-info"><i class="icon wb-eye" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->sop_m->count_all('(select * from vwsop where sop_step="pengesah" and sop_status="DRAFT" '.$where.') as vwsop'), //nama tabel
				"recordsFiltered" => $this->sop_m->count_filtered('pengesahsop'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function evaluasi_sop()
	{
		$result = $this->sop_m->get_datatables('evaluasisop'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = tgl_indo2($row->evaluasi_tanggal);
			$rel[] = '<a href="'.base_url().'sop/evaluasi_sop/lihat/'.$row->evaluasi_id.'" title="Lihat SOP">
						<span class="btn btn-xs btn-info"><i class="icon wb-eye" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>';
			$rel[] = ($row->evaluasi_status == 'Y' ? '<span class="badge badge-md badge-success" style="color:#fff; font-size:11px">Aktif</span>' : '<span class="badge badge-md badge-danger" style="color:#fff; font-size:11px">Nonaktif</span>');
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->sop_m->count_all('evaluasi'), //nama tabel
				"recordsFiltered" => $this->sop_m->count_filtered('evaluasisop'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function pilih_sop()
	{
		$result = $this->sop_m->get_datatables('pilihsop'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->sop_nama;
			$rel[] = '<a href="'.base_url().'sop/pencarian_sop/lihat/'.$row->sop_alias.'" title="Lihat">
						<span class="btn btn-xs btn-info"><i class="icon wb-eye" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="#" class="Pilih'.$row->sop_alias.'" title="Pilih">
						<span class="btn btn-xs btn-success"><i class="icon wb-check" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  <script type="text/javascript">
						$(".Pilih'.$row->sop_alias.'").click(function(){
							var key = "'.$row->sop_alias.'";
							var value = "'.$row->sop_nama.'"; 
							$("#DaftarSOP").append($("<option selected></option>").attr("value",key).text(value)); 
						});
					  </script>';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->sop_m->count_all('(select * from vwsop where sop_status="DISAHKAN") as vwsop'), //nama tabel
				"recordsFiltered" => $this->sop_m->count_filtered('pilihsop'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function front_pencariansop()
	{
		$result = $this->sop_m->get_datatables('datasopfront'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$link = ($row->sop_update_file == '' ? ''.base_url().'pdf/index.php?alias='.md5($row->sop_alias).'' : ''.base_url().'assets/media/sop_update/'.$row->sop_update_file.'');
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->sop_no;
			$rel[] = $row->sop_nama;
			$rel[] = $row->sop_tgl_efektif;
			$rel[] = '<a href="'.$link.'" target="_blank" title="Lihat">
						<span class="label label-success"><i class="fa fa-eye" aria-hidden="true"></i></span>
					  </a>';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->sop_m->count_all('(select * from vwsop where sop_tgl_efektif != "") as vwsop'), //nama tabel
				"recordsFiltered" => $this->sop_m->count_filtered('datasopfront'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */	
	function front_evaluasisop()
	{
		$result = $this->sop_m->get_datatables('dataevaluasifront'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$link = ($row->sop_update_file == '' ? ''.base_url().'pdf/index.php?alias='.md5($row->sop_alias).'' : ''.base_url().'assets/media/sop_update/'.md5($row->sop_update_file).'');
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->sop_no;
			$rel[] = $row->sop_nama;
			$rel[] = $row->sop_tgl_efektif;
			$rel[] = '<a href="'.base_url().'evaluasi_sop/nilai/'.md5($row->sop_alias).'" title="Lihat">
						<span class="label label-success"><i class="fa fa-eye" aria-hidden="true"></i></span>
					  </a>';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->sop_m->count_all('vwevaluasi'), //nama tabel
				"recordsFiltered" => $this->sop_m->count_filtered('dataevaluasifront'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */
	function notif()
	{
		$session_data = $this->session->userdata('setneg_in');
		$userid = $session_data['userid'];
		$groupid = $session_data['groupid'];
		
		$result = $this->notif_m->get_datatables('semua'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$linkgrup = ($groupid == 11 ? 'periksa' : 'lihat');
			$link = ($row->notif_jenis == 'reviu' ? '<a href="'.base_url().'sop/reviu/'.$linkgrup.'/'.$row->sop_alias.'/'.$row->notif_id.'/'.$row->reviu_id.'"><b>'.$row->notif_title.'</b></a>' : '<a href="'.base_url().'sop/revisi_sop/periksa/'.$row->sop_alias.'/'.$row->revisi_id.'"><b>'.$row->notif_title.'</b></a>');
			
			$rel = array();
			$rel[] = $i;
			$rel[] = $link;
			$rel[] = tgl_indo2($row->notif_date);
			$rel[] = ($row->notif_jenis == 'reviu' ? '<span class="badge badge-md badge-primary" style="color:#fff; font-size:11px">Reviu</span>' : '<span class="badge badge-md badge-warning" style="color:#fff; font-size:11px">Revisi</span>');
			$rel[] = ($row->notif_action == 'sudah' ? '<span class="badge badge-md badge-info" style="color:#fff; font-size:11px">Sudah</span>' : '<span class="badge badge-md badge-danger" style="color:#fff; font-size:11px">Belum</span>');
			$rel[] = ($row->notif_status == 'R' ? '<span class="badge badge-md badge-success" style="color:#fff; font-size:11px">Read</span>' : '<span class="badge badge-md badge-warning" style="color:#fff; font-size:11px">Delivered</span>');
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->notif_m->count_all('(select * from notif where user_id='.$userid.') as notif'), //nama tabel
				"recordsFiltered" => $this->notif_m->count_filtered('semua'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */
	function list_kategori()
	{
		$result = $this->komunikasi_m->get_datatables('listkategori'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = '<a href="'.base_url().'komunikasi/forum/topik"><b>'.$row->kategori_diskusi_judul.'</b><br><span style="margin-left:20px; font-size:10px">'.$row->kategori_diskusi_ket."</span></a>";
			$rel[] = $row->kategori_diskusi_id;
			$rel[] = $row->kategori_diskusi_id;
			$rel[] = $row->kategori_diskusi_id;
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->komunikasi_m->count_all('kategori_diskusi'), //nama tabel
				"recordsFiltered" => $this->komunikasi_m->count_filtered('listkategori'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */
	function list_topik()
	{
		$result = $this->komunikasi_m->get_datatables('listtopik'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = '<a href="#"><b>'.$row->kategori_diskusi_judul.'</b><br><span style="margin-left:20px; font-size:10px">'.$row->kategori_diskusi_ket."</span></a>";
			$rel[] = $row->kategori_diskusi_id;
			$rel[] = $row->kategori_diskusi_id;
			$rel[] = $row->kategori_diskusi_id;
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->komunikasi_m->count_all('kategori_diskusi'), //nama tabel
				"recordsFiltered" => $this->komunikasi_m->count_filtered('listtopik'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */
	function kritik_saran()
	{
		$result = $this->komunikasi_m->get_datatables('kritik_saran'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->kritik_saran_nama;
			$rel[] = $row->kritik_saran_judul;
			$rel[] = tgl_indo2($row->kritik_saran_tanggal);
			$rel[] = ($row->kritik_saran_status == 'R' ? '<span class="badge badge-md badge-success" style="color:#fff; font-size:11px">Read</span>' : '<span class="badge badge-md badge-warning" style="color:#fff; font-size:11px">Delivered</span>');
			$rel[] = '<a href="'.base_url().'komunikasi/kritik_saran/lihat/'.$row->kritik_saran_id.'" title="Lihat">
						<span class="btn btn-xs btn-info"><i class="icon wb-eye" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="'.base_url().'act_komunikasi/delete_kritik_saran/'.$row->kritik_saran_id.'" class="del'.$row->kritik_saran_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						 
						var elems = document.getElementsByClassName(\'del'.$row->kritik_saran_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->komunikasi_m->count_all('kritik_saran'), //nama tabel
				"recordsFiltered" => $this->komunikasi_m->count_filtered('kritik_saran'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

/* ====================================================================================================================================================== */
	function data_kontak()
	{
		$session_data = $this->session->userdata('setneg_in');
		$userid = $session_data['userid'];
		
		$result = $this->komunikasi_m->get_datatables('kontak'); //nama function
		$data = array();
		$i=0;
		foreach ($result as $row) {
			$i++;
			$rel = array();
			$rel[] = $i;
			$rel[] = $row->kontak_kami_nama;
			$rel[] = $row->kontak_kami_telepon;
			$rel[] = $row->kontak_kami_email;
			$rel[] = tgl_indo2($row->kontak_kami_tanggal);
			$rel[] = ($row->kontak_kami_status == 'R' ? '<span class="badge badge-md badge-success" style="color:#fff; font-size:11px">Read</span>' : '<span class="badge badge-md badge-warning" style="color:#fff; font-size:11px">Delivered</span>');
			$rel[] = '<a href="'.base_url().'komunikasi/kontak_kami/lihat/'.$row->kontak_kami_id.'" title="Lihat">
						<span class="btn btn-xs btn-info"><i class="icon wb-eye" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  <a href="'.base_url().'act_komunikasi/delete_kontak_kami/'.$row->kontak_kami_id.'" class="del'.$row->kontak_kami_id.'" title="Delete">
						<span class="btn btn-xs btn-danger"><i class="icon wb-trash" aria-hidden="true" style="color:#fff; font-size:12px"></i></span>
					  </a>
					  
					  
					  <script type="text/javascript">
						 
						var elems = document.getElementsByClassName(\'del'.$row->kontak_kami_id.'\');
						var confirmIt = function (e) {
							if (!confirm(\'Yakin Akan Dihapus ?\')) e.preventDefault();
						};
						for (var i = 0, l = elems.length; i < l; i++) {
							elems[i].addEventListener(\'click\', confirmIt, false);
						}
					</script>';
			
			$data[] = $rel;
		}
		
		$output = array(
				"draw" => $_POST['draw'],
				"recordsTotal" => $this->komunikasi_m->count_all('kontak_kami'), //nama tabel
				"recordsFiltered" => $this->komunikasi_m->count_filtered('kontak'), //nama function
				"data" => $data,
		);
		echo json_encode($output);
	}
/* ====================================================================================================================================================== */

}