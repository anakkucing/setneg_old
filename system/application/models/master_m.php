<?php
class master_m extends Model
    {
     	function __construct()
		{
			parent::__construct();
		}
		
		
		function select_table($table,$field)
		{
			$q = $this->db->query("SELECT * FROM $table order by $field");
			return $q;
		}
		function edit_table($table,$field,$id)
		{
			$q = $this->db->query("SELECT * FROM $table where $field=$id");
			return $q;
		}
		function query_manual_select($datainput)
		{
			$q = $this->db->query($datainput);
			return $q;
		}
		
		function query_manual($datainput)
		{
			$q = $this->db->query($datainput);
			return $q;
		}
		
		function get_datatables($Function)
		{
			$this->$Function();
			if($_POST['length'] != -1)
			$this->db->limit($_POST['length'], $_POST['start']);
			$query = $this->db->get();
			return $query->result();
		}
		public function count_all($Table)
		{
			$this->db->from($Table);
			return $this->db->count_all_results();
		}
		function count_filtered($Function)
		{
			$this->$Function();
			$query = $this->db->get();
			return $query->num_rows();
		}
		public function cek_null($Table,$Coloum,$Where)
		{
			$this->db->from($Table);
			$this->db->where($Coloum, $Where);
			return $this->db->count_all_results();
		}
		
		
		
		
		
		
		
		/* ================================================================================================================================================================ */
		function datasatuanorganisasi()
		{
			$table = 'satuan_organisasi';
			$column = array('satuan_organisasi_id ','satuan_organisasi_nama');
			$order = array('satuan_organisasi_id' => 'asc');
			
			$this->db->from($table);
			$i = 0;
			foreach ($column as $item) 
			{
				if(isset($_POST['search']['value'])){
					($i===0) ? $this->db->like($item, $_POST['search']['value']) : $this->db->or_like($item, $_POST['search']['value']);
				}
				$column[$i] = $item;
				$i++;
			}
			
			if(isset($_POST['order']))
			{
				$this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
			} 
			else if(isset($order))
			{
				$order = $order;
				$this->db->order_by(key($order), $order[key($order)]);
			}
		}
		/* ================================================================================================================================================================ */
			
		/* ================================================================================================================================================================ */
		function usermanager()
		{
			$table = 'vwuser';
			$column = array('user_id ','user_group_name','satker_nama','user_status');
			$order = array('user_id' => 'asc');
			
			$this->db->from($table);
			$i = 0;
			foreach ($column as $item) 
			{
				if(isset($_POST['search']['value'])){
					($i===0) ? $this->db->like($item, $_POST['search']['value']) : $this->db->or_like($item, $_POST['search']['value']);
				}
				$column[$i] = $item;
				$i++;
			}
			
			if(isset($_POST['order']))
			{
				$this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
			} 
			else if(isset($order))
			{
				$order = $order;
				$this->db->order_by(key($order), $order[key($order)]);
			}
		}
		/* ================================================================================================================================================================ */
			
		/* ================================================================================================================================================================ */
		function dataunitkerja()
		{
			$table = 'vwunit_kerja';
			$column = array('unit_kerja_id ','unit_kerja_nama','satuan_organisasi_nama');
			$order = array('unit_kerja_id' => 'asc');
			
			$this->db->from($table);
			$i = 0;
			foreach ($column as $item) 
			{
				if(isset($_POST['search']['value'])){
					($i===0) ? $this->db->like($item, $_POST['search']['value']) : $this->db->or_like($item, $_POST['search']['value']);
				}
				$column[$i] = $item;
				$i++;
			}
			
			if(isset($_POST['order']))
			{
				$this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
			} 
			else if(isset($order))
			{
				$order = $order;
				$this->db->order_by(key($order), $order[key($order)]);
			}
		}
		/* ================================================================================================================================================================ */
			
		/* ================================================================================================================================================================ */
		function dataunitbagian()
		{
			$table = 'vwbagian';
			$column = array('bagian_id ','bagian_nama','unit_kerja_nama','satuan_organisasi_nama');
			$order = array('bagian_id' => 'asc');
			
			$this->db->from($table);
			$i = 0;
			foreach ($column as $item) 
			{
				if(isset($_POST['search']['value'])){
					($i===0) ? $this->db->like($item, $_POST['search']['value']) : $this->db->or_like($item, $_POST['search']['value']);
				}
				$column[$i] = $item;
				$i++;
			}
			
			if(isset($_POST['order']))
			{
				$this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
			} 
			else if(isset($order))
			{
				$order = $order;
				$this->db->order_by(key($order), $order[key($order)]);
			}
		}
		/* ================================================================================================================================================================ */
			
		/* ================================================================================================================================================================ */
		function datajabatanpengesah()
		{
			$session_data = $this->session->userdata('setneg_in');
			$groupid = $session_data['groupid'];
			$userid = $session_data['userid'];
			
			$where = ($groupid == 10 ? 'where user_id='.$userid.'' : '');
			$table = '(select * from ttd_pengesah '.$where.') as ttd_pengesah';
			$column = array('ttd_pengesah_id','ttd_pengesah_jabatan','ttd_pengesah_nama','ttd_pengesah_gambar','ttd_pengesah_status');
			$order = array('ttd_pengesah_id' => 'asc');
			
			$this->db->from($table);
			$i = 0;
			foreach ($column as $item) 
			{
				if(isset($_POST['search']['value'])){
					($i===0) ? $this->db->like($item, $_POST['search']['value']) : $this->db->or_like($item, $_POST['search']['value']);
				}
				$column[$i] = $item;
				$i++;
			}
			
			if(isset($_POST['order']))
			{
				$this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
			} 
			else if(isset($order))
			{
				$order = $order;
				$this->db->order_by(key($order), $order[key($order)]);
			}
		}
		/* ================================================================================================================================================================ */
			
		/* ================================================================================================================================================================ */
		function datajenissop()
		{
			$table = 'kategori_sop';
			$column = array('kategori_id ','kategori_nama','kategori_status');
			$order = array('kategori_id' => 'asc');
			
			$this->db->from($table);
			$i = 0;
			foreach ($column as $item) 
			{
				if(isset($_POST['search']['value'])){
					($i===0) ? $this->db->like($item, $_POST['search']['value']) : $this->db->or_like($item, $_POST['search']['value']);
				}
				$column[$i] = $item;
				$i++;
			}
			
			if(isset($_POST['order']))
			{
				$this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
			} 
			else if(isset($order))
			{
				$order = $order;
				$this->db->order_by(key($order), $order[key($order)]);
			}
		}
		/* ================================================================================================================================================================ */
			
		/* ================================================================================================================================================================ */
		function datasimbol()
		{
			$table = 'simbol';
			$column = array('simbol_id ','simbol_nama','simbol_img');
			$order = array('simbol_id' => 'asc');
			
			$this->db->from($table);
			$i = 0;
			foreach ($column as $item) 
			{
				if(isset($_POST['search']['value'])){
					($i===0) ? $this->db->like($item, $_POST['search']['value']) : $this->db->or_like($item, $_POST['search']['value']);
				}
				$column[$i] = $item;
				$i++;
			}
			
			if(isset($_POST['order']))
			{
				$this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
			} 
			else if(isset($order))
			{
				$order = $order;
				$this->db->order_by(key($order), $order[key($order)]);
			}
		}
		/* ================================================================================================================================================================ */
			
		/* ================================================================================================================================================================ */
		function datasop()
		{
			$table = 'vwsop';
			$column = array('sop_id','sop_alias','sop_no','sop_nama','pegawai_nama','sop_tgl_pembuatan','sop_tgl_efektif','kategori_nama','satker_nama','unit_kerja_nama','sop_status');
			$order = array('sop_id' => 'asc');
			
			$this->db->from($table);
			$i = 0;
			foreach ($column as $item) 
			{
				if(isset($_POST['search']['value'])){
					($i===0) ? $this->db->like($item, $_POST['search']['value']) : $this->db->or_like($item, $_POST['search']['value']);
				}
				$column[$i] = $item;
				$i++;
			}
			
			if(isset($_POST['order']))
			{
				$this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
			} 
			else if(isset($order))
			{
				$order = $order;
				$this->db->order_by(key($order), $order[key($order)]);
			}
		}
		/* ================================================================================================================================================================ */
			
		/* ================================================================================================================================================================ */
		function datapertanyaan()
		{
			$table = 'pertanyaan';
			$column = array('pertanyaan_id','pertanyaan_isi','pertanyaan_status');
			$order = array('pertanyaan_id' => 'asc');
			
			$this->db->from($table);
			$i = 0;
			foreach ($column as $item) 
			{
				if(isset($_POST['search']['value'])){
					($i===0) ? $this->db->like($item, $_POST['search']['value']) : $this->db->or_like($item, $_POST['search']['value']);
				}
				$column[$i] = $item;
				$i++;
			}
			
			if(isset($_POST['order']))
			{
				$this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
			} 
			else if(isset($order))
			{
				$order = $order;
				$this->db->order_by(key($order), $order[key($order)]);
			}
		}
		/* ================================================================================================================================================================ */
			
		function liststruktur()
		{
			$q = $this->db->query("select struktur_organisasi_id, struktur_organisasi_nama, struktur_organisasi_level, struktur_organisasi_mychild, IFNULL(struktur_organisasi_parent, 100) AS parent from struktur_organisasi order by struktur_organisasi_id,struktur_organisasi_parent");
			return $q;
		}
		function listmenu()
		{
			$q = $this->db->query("select a.menu_id, a.menu_name, a.menu_level, IFNULL(a.menu_parent, 100) AS parent from menu a order by a.menu_id");
			return $q;
		}
		function editgroup($id)
		{
			$q = $this->db->query("select * from user_group where user_group_id=$id");
			return $q;
		}
		function listmenu_id($id)
		{
			$q = $this->db->query("select a.menu_id, a.menu_name, a.menu_level, IFNULL(a.menu_parent, 100) AS parent, 
							(select menu_id from access_menu where menu_id=a.menu_id and user_group_id=$id limit 1) as checklist,
							(select access_menu_a from access_menu where menu_id=a.menu_id and user_group_id=$id limit 1) as checkadd,
							(select access_menu_e from access_menu where menu_id=a.menu_id and user_group_id=$id limit 1) as checkedit,
							(select access_menu_d from access_menu where menu_id=a.menu_id and user_group_id=$id limit 1) as checkdelete
							from menu a order by a.menu_order");
			return $q;
		}
		function menu_listbackend()
		{
			$q = $this->db->query("select menu_id, menu_name, menu_level, menu_sts_child, menu_order, IFNULL(menu_parent, 100) AS parent from menu order by menu_order");
			return $q;
		}
		function last_menu_order($parent)
		{
			$q = $this->db->query("select menu_order from menu where menu_parent=$parent order by menu_order desc limit 1");
			return $q;
		}
		
		function order_back_child($parent,$id)
		{
			$q = $this->db->query("SELECT menu_id FROM menu where menu_parent=$parent and menu_order=$id");
			return $q;
		}
		function order_back_parent($id)
		{
			$q = $this->db->query("SELECT menu_id FROM menu where menu_parent=0 and menu_order=$id");
			return $q;
		}
		function order_back_id($order,$id)
		{
			$q = $this->db->query("UPDATE menu SET menu_order=$order where menu_id=$id");
			return $q;
		}

		
		
		
		
		
		
		
	
	 
	
		
}