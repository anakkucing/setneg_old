<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*

This is one of the free scripts from www.dhtmlgoodies.com
You are free to use this script as long as this copyright message is kept intact

(c) Alf Magne Kalleland, http://www.dhtmlgoodies.com - 2005

*/

class CI_Master_kategorisop {
	
	var $elementArray = array();
	
	
	
	function addToArray($id,$name,$parentID,$level){
		if(empty($parentID))$parentID=0;	
		$this->elementArray[$parentID][] = array($id,$name,$parentID,$level);
	}
	
	
	function drawTree(){
		$a = 0;
		for($no=0;$no<count($this->elementArray[0]);$no++){
			$a++;
			echo "<tr>";
				echo "<td style='text-transform:capitalize'>".$this->elementArray[0][$no][1]."</td>";
				echo "<td align='right'>
					<a href='".base_url()."master/kategori_sop/add/".$this->elementArray[0][$no][0]."/".$this->elementArray[0][$no][3]."' class='btn btn-success btn-xs NewLink'><i class='fa fa-plus'></i></a> &nbsp;
					<a href='".base_url()."master/kategori_sop/edit/".$this->elementArray[0][$no][0]."' class='btn btn-warning btn-xs NewLink'><i class='fa fa-pencil'></i></a> &nbsp;
					<a href='".base_url()."act_master/delete_kategori_sop/".$this->elementArray[0][$no][0]."' class='confirmation btn btn-danger btn-xs'><i class='fa fa-times'></i></a>";	
			echo "</td>";	
			echo "</tr>";		
			
			$this->drawSubNode($this->elementArray[0][$no][0]);
		}		
	}
	
	private function drawSubNode($parentID){
		if(isset($this->elementArray[$parentID])){
			$tab = '';
			$b = 0;
			$nosub = '';
			for($no=0;$no<count($this->elementArray[$parentID]);$no++){
				$b++;
				if($this->elementArray[$parentID][$no][3] == 2){$tab = "&nbsp;&nbsp;&nbsp;&nbsp;";}
				if($this->elementArray[$parentID][$no][3] == 3){$tab = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";}
				
				echo "<tr>";
					echo "<td>".$tab.$this->elementArray[$parentID][$no][1]."</td>";	
					echo "<td align='right'>
					<a href='".base_url()."master/kategori_sop/add/".$this->elementArray[$parentID][$no][0]."/".$this->elementArray[$parentID][$no][3]."' class='btn btn-success btn-xs NewLink'><i class='fa fa-plus'></i></a> &nbsp;
					<a href='".base_url()."master/kategori_sop/edit/".$this->elementArray[$parentID][$no][0]."' class='btn btn-warning btn-xs NewLink'><i class='fa fa-pencil'></i></a> &nbsp;
					<a href='".base_url()."act_master/delete_kategori_sop/".$this->elementArray[$parentID][$no][0]."' class='confirmation btn btn-danger btn-xs'><i class='fa fa-times'></i></a>";	
				echo "</td>";	
				echo "</tr>";	
				
				$this->drawSubNode($this->elementArray[$parentID][$no][0]);
			}						
		}		
	}
	
}//end class


?>