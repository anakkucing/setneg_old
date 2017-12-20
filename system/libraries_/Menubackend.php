<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*

This is one of the free scripts from www.dhtmlgoodies.com
You are free to use this script as long as this copyright message is kept intact

(c) Alf Magne Kalleland, http://www.dhtmlgoodies.com - 2005

*/

class CI_Menubackend {
	
	var $elementArray = array();
	
	
	
	function addToArray($id,$name,$parentID,$link,$level,$icon,$url){
		if(empty($parentID))$parentID=0;	
		$this->elementArray[$parentID][] = array($id,$name,$parentID,$link,$level,$icon,$url);
	}
	
	
	function drawTree(){
		$distype='';
		for($no=0;$no<count($this->elementArray[0]);$no++){
			echo "<li>";
			echo "<a href='#'><i class='".$this->elementArray[0][$no][5]."'></i> ".$this->elementArray[0][$no][1]."<span class='fa arrow'></span></a>";			
			$this->drawSubNode($this->elementArray[0][$no][0]);
			echo "</li>";
		}		
	}
	
	private function drawSubNode($parentID){
		if(isset($this->elementArray[$parentID])){
				echo "<ul class='nav nav-second-level'>";
			for($no=0;$no<count($this->elementArray[$parentID]);$no++){
				
				echo "<li><a href='".$this->elementArray[$parentID][$no][6]."/".$this->elementArray[$parentID][$no][3]."'>".$this->elementArray[$parentID][$no][1]."</a></li>";	
				//$this->drawSubNode($this->elementArray[$parentID][$no][0]);
			}							
				echo "</ul>";	
		}		
	}
	
}//end class


?>