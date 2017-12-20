<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*

This is one of the free scripts from www.dhtmlgoodies.com
You are free to use this script as long as this copyright message is kept intact

(c) Alf Magne Kalleland, http://www.dhtmlgoodies.com - 2005

*/

class CI_Catvideo {
	
	var $elementArray = array();
	
	
	
	function addToArray($id,$name,$parentID,$level,$edit,$delete){
		if(empty($parentID))$parentID=0;	
		$this->elementArray[$parentID][] = array($id,$name,$level,$edit,$delete);
	}
	
	
	function drawTree(){
		for($no=0;$no<count($this->elementArray[0]);$no++){
			echo "<tr><td>".$this->elementArray[0][$no][1]."";	
			echo "</td><td>
					<a href='".base_url()."JSWPanel/category_video/add/".$this->elementArray[0][$no][0]."/2'><img src='".base_url()."assets/inc/admin/img/icons/add.png' alt='Edit'></a>";
			echo "</td><td>
				<a href='".base_url()."JSWPanel/category_video/edit/".$this->elementArray[0][$no][0]."'>".$this->elementArray[0][$no][3]."</a> &nbsp;
				<a href='".base_url()."JSWPanel/delete_category_video/".$this->elementArray[0][$no][0]."'>".$this->elementArray[0][$no][4]."</a>";
			echo "</td></tr>";		
			$this->drawSubNode($this->elementArray[0][$no][0]);
		}		
	}
	
	private function drawSubNode($parentID){
		if(isset($this->elementArray[$parentID])){
			$tab = '';
			for($no=0;$no<count($this->elementArray[$parentID]);$no++){
				if($this->elementArray[$parentID][$no][2] == '2')
					$tab = '&nbsp;&nbsp;&nbsp;&nbsp;';
				if($this->elementArray[$parentID][$no][2] == '3')
					$tab = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
				if($this->elementArray[$parentID][$no][2] == '4')
					$tab = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
					
					$level = $this->elementArray[$parentID][$no][2] +1;
					
				echo "<tr><td>".$tab." ".$this->elementArray[$parentID][$no][1]."";	
				echo "</td><td>
						<a href='".base_url()."JSWPanel/category_video/add/".$this->elementArray[$parentID][$no][0]."/".$level."'><img src='".base_url()."assets/inc/admin/img/icons/add.png' alt='Edit'></a>";	
				echo "</td><td>
						<a href='".base_url()."JSWPanel/category_video/edit/".$this->elementArray[$parentID][$no][0]."'>".$this->elementArray[$parentID][$no][3]."</a> &nbsp;
						<a href='".base_url()."JSWPanel/delete_category_video/".$this->elementArray[$parentID][$no][0]."'>".$this->elementArray[$parentID][$no][4]."</a>";	
				echo "</td></tr>";	
				$this->drawSubNode($this->elementArray[$parentID][$no][0]);
			}						
		}		
	}
	
}//end class


?>