<?php

class View extends Controller {

	function __construct()
	{
		parent::Controller(); 
		$this->load->helper(array('form','url', 'text_helper','date','tgl_indonesia'));
		$this->load->database();
		$this->load->model(array('master_m'));	
		$this->load->library(array('alias','encrypt'));
		session_start();	
	}
	

	function unit_kerja() {
        $tmp     = '';
		$id = ($this->uri->segment(4) != '' ? $this->uri->segment(4) : 0);
		$data = $this->master_m->edit_table('unit_kerja','satuan_organisasi_id',$this->uri->segment(3));
        if($data){
            $tmp .=    "<option value=''>Pilih Unit Kerja</option>";    
            foreach($data->result_array() as $row){  
                $tmp .= "<option value='".$row['unit_kerja_id']."'"; if($row['unit_kerja_id'] == $id){$tmp .=" selected";} $tmp .=">".$row['unit_kerja_nama']."</option>";
            }
        } else { 
            $tmp .=    "<option value=''>Pilih Unit Kerja</option>";    
        }
        die($tmp);
    }

	function bagian() {
        $tmp     = '';
		$id = ($this->uri->segment(4) != '' ? $this->uri->segment(4) : 0);
		$data = $this->master_m->edit_table('bagian','unit_kerja_id',$this->uri->segment(3));
        if($data){
            $tmp .=    "<option value=''>Pilih Bagian</option>";    
            foreach($data->result_array() as $row){  
                $tmp .= "<option value='".$row['bagian_id']."'"; if($row['bagian_id'] == $id){$tmp .=" selected";} $tmp .=">".$row['bagian_nama']."</option>";
            }
        } else { 
            $tmp .=    "<option value=''>Pilih Bagian</option>";    
        }
        die($tmp);
    }

}
