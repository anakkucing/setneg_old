<?php
class front_m extends Model
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
		
		function get_id($table,$field,$where,$id)
		{
			$this->db->select($field);
			$this->db->where($where,$id);
			$q = $this->db->get($table);
			$data = array_shift($q->result_array());

			return $data[$field];
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
		function dataslide()
		{
			$table = 'slide';
			$column = array('slide_id ','slide_judul','slide_gambar');
			$order = array('slide_id' => 'asc');
			
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
		function datatentangkami()
		{
			$table = 'vwtentang_kami';
			$column = array('content_id ','content_nama');
			$order = array('content_id' => 'asc');
			
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
		function dataagenda()
		{
			$table = 'vwagenda';
			$column = array('content_id ','content_nama');
			$order = array('content_id' => 'asc');
			
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
		function datapengumuman()
		{
			$table = 'pengumuman';
			$column = array('pengumuman_id ','pengumuman_judul','pengumuman_tanggal');
			$order = array('pengumuman_id' => 'asc');
			
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
		function datakegiatan()
		{
			$table = 'kegiatan';
			$column = array('kegiatan_id ','kegiatan_nama','kegiatan_tanggal','kegiatan_gambar');
			$order = array('kegiatan_id' => 'asc');
			
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
			
		
		
		
		
		
		
	
	 
	
		
}