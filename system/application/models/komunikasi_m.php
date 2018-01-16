<?php
class Komunikasi_m extends Model
    {
     	function __construct()
		{
			parent::__construct();
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
		function listkategori()
		{
			$table = 'kategori_diskusi';
			$column = array('kategori_diskusi_id','kategori_diskusi_judul');
			$order = array('kategori_diskusi_id' => 'asc');
			
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
		function listtopik()
		{
			$table = 'kategori_diskusi';
			$column = array('kategori_diskusi_id','kategori_diskusi_judul');
			$order = array('kategori_diskusi_id' => 'asc');
			
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
		function kontak()
		{
			$table = 'kontak_kami';
			$column = array('kontak_kami_id','kontak_kami_nama','kontak_kami_telepon','kontak_kami_alamat','kontak_kami_email');
			$order = array('kontak_kami_id' => 'asc');
			
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
		function kritik_saran()
		{
			$table = 'kritik_saran';
			$column = array('kritik_saran_id','kritik_saran_nama','kritik_saran_judul','kritik_saran_tanggal');
			$order = array('kritik_saran_id' => 'asc');
			
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
			
		function update_status($tabel,$field,$where,$id)
		{
			$q = $this->db->query("update $tabel set $field='R' where $where='$id'");
			return $q;
		}
		function list_user($userid,$key)
		{
			$q = $this->db->query("select u.*, 
					(select c1.chating_date from chating c1 where c1.user_from=u.user_id order by chating_date desc limit 1) as chatdate,
					(select count(c1.user_from) from chating c1 where c1.user_from=u.user_id and c1.chating_status='D' limit 1) as jmlchat from user u 
					left join chating c on u.user_id=c.user_from
					where u.user_id!='$userid' and u.user_fullname like '%$key%' group by u.user_id order by chatdate desc");
			return $q;
		}
		function insert_chating($data){
			$this->db->insert('chating', $data);
		}
	
		
		function UpdateStatus($id,$userid)
		{
			$q = $this->db->query("update chating set chating_status='R' where (user_from='$userid' and user_to='$id') or (user_from='$id' and user_to='$userid')");
			return $q;
		}
		function getAllUser($where="")
		{
			//if($where) $this->db->where($where);
			return $this->db->get("user");
		}
		function getAll($where="")
		{
			if($where) $this->db->where($where);
			$this->db->order_by("chating_date","ASC");
			return $this->db->get("chating");
		}
		
		function getInsert($data){
			return $this->db->set($data)->insert("chating");
		}
		
		function getLastId($where){
			return $this->db->where($where)->order_by("chating_id","DESC")->limit(1)->get("chating")->row_array();
		}
	
		
}