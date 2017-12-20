<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*

This is one of the free scripts from www.dhtmlgoodies.com
You are free to use this script as long as this copyright message is kept intact

(c) Alf Magne Kalleland, http://www.dhtmlgoodies.com - 2005

*/

class CI_Accessleveledit {
	
	var $elementArray = array();
	
	
	
	function addToArray($id,$name,$parentID,$level,$type,$Eview,$Eadd,$Eedit,$Edelete){
		if(empty($parentID))$parentID=0;	
		$this->elementArray[$parentID][] = array($id,$name,$parentID,$level,$type,$Eview,$Eadd,$Eedit,$Edelete);
	}
	
	
	function drawTree(){
		$distype='';
		for($no=0;$no<count($this->elementArray[0]);$no++){
			if($distype != $this->elementArray[0][$no][4]){
				$distype=$this->elementArray[0][$no][4];
				if($this->elementArray[0][$no][4] == 'F'){$type='Front End';}else{$type='Back End';}
				echo "<tr bgcolor='#cccccc'>";
				echo "<td><b>".$type."</b></td>";	
				echo "<td align='left'>&nbsp;</td>";	
				echo "<td align='center' colspan='4'>&nbsp;</td>";
				echo "</tr>";
			}
		
		
			echo "<tr>";
			echo "<td>".$this->elementArray[0][$no][1]."<input type='hidden' name='menu[]' value='".$this->elementArray[0][$no][0]."'></td>";	
			echo "<td align='center'><input type='checkbox' value='Y' name='view_access_".$this->elementArray[0][$no][0]."' class='check_all_".$this->elementArray[0][$no][0]."' onclick='select_all_".$this->elementArray[0][$no][0]."()'"; if($this->elementArray[0][$no][5] == 'Y'){echo' checked';} echo"></td>";	
			echo "<td align='center' colspan='3'>&nbsp;</td>";
			echo "</tr>";		
			echo "<script>function select_all_".$this->elementArray[0][$no][0]."() {
					$('input[class=access_case_".$this->elementArray[0][$no][0]."]:checkbox').each(function(){ 
						if($('input[class=check_all_".$this->elementArray[0][$no][0]."]:checkbox:checked').length == 0){ 
							$(this).prop('checked', false); 
						} else {
							$(this).prop('checked', true); 
						} 
					});
					$('input[class=add_".$this->elementArray[0][$no][0]."]:checkbox').each(function(){ 
						if($('input[class=check_all_".$this->elementArray[0][$no][0]."]:checkbox:checked').length == 0){ 
							$(this).prop('checked', false); 
						} else {
							$(this).prop('checked', true); 
						} 
					});
					$('input[class=edit_".$this->elementArray[0][$no][0]."]:checkbox').each(function(){ 
						if($('input[class=check_all_".$this->elementArray[0][$no][0]."]:checkbox:checked').length == 0){ 
							$(this).prop('checked', false); 
						} else {
							$(this).prop('checked', true); 
						} 
					});
					$('input[class=delete_".$this->elementArray[0][$no][0]."]:checkbox').each(function(){ 
						if($('input[class=check_all_".$this->elementArray[0][$no][0]."]:checkbox:checked').length == 0){ 
							$(this).prop('checked', false); 
						} else {
							$(this).prop('checked', true); 
						} 
					});
					$('input[class=view_".$this->elementArray[0][$no][0]."]:checkbox').each(function(){ 
						if($('input[class=check_all_".$this->elementArray[0][$no][0]."]:checkbox:checked').length == 0){ 
							$(this).prop('checked', false); 
						} else {
							$(this).prop('checked', true); 
						} 
					});
				}
				</script>";	
			$this->drawSubNode($this->elementArray[0][$no][0]);
		}		
	}
	
	private function drawSubNode($parentID){
		if(isset($this->elementArray[$parentID])){
			$tab = '';
			for($no=0;$no<count($this->elementArray[$parentID]);$no++){
				if($this->elementArray[$parentID][$no][3] == '2')
					$tab = '&nbsp;&nbsp;&nbsp;&nbsp;';
				if($this->elementArray[$parentID][$no][3] == '3')
					$tab = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
				if($this->elementArray[$parentID][$no][3] == '4')
					$tab = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
					
					$level = $this->elementArray[$parentID][$no][3] +1;
					
				echo "<tr>";
				echo "<td>".$tab." ".$this->elementArray[$parentID][$no][1]."<input type='hidden' name='menu[]' value='".$this->elementArray[$parentID][$no][0]."'></td>";
					echo "<td align='center'><input type='checkbox' name='view_access_".$this->elementArray[$parentID][$no][0]."' value='Y' class='view_".$this->elementArray[$parentID][$no][2]."'"; if($this->elementArray[$parentID][$no][5] == 'Y'){echo' checked';} echo"></td>";	
				if($this->elementArray[$parentID][$no][4] == 'B'){	
					echo "<td align='center'><input type='checkbox' name='add_access_".$this->elementArray[$parentID][$no][0]."' value='Y' class='add_".$this->elementArray[$parentID][$no][2]."'"; if($this->elementArray[$parentID][$no][6] == 'Y'){echo' checked';} echo"></td>";	
					echo "<td align='center'><input type='checkbox' name='edit_access_".$this->elementArray[$parentID][$no][0]."' value='Y' class='edit_".$this->elementArray[$parentID][$no][2]."'"; if($this->elementArray[$parentID][$no][7] == 'Y'){echo' checked';} echo"></td>";	
					echo "<td align='center'><input type='checkbox' name='delete_access_".$this->elementArray[$parentID][$no][0]."' value='Y' class='delete_".$this->elementArray[$parentID][$no][2]."'"; if($this->elementArray[$parentID][$no][8] == 'Y'){echo' checked';} echo"></td>";	
				}else{	
					echo "<td align='center' colspan='3'>&nbsp;</td>";		
				}
				echo "</tr>";	
				$this->drawSubNode($this->elementArray[$parentID][$no][0]);
			}						
		}		
	}
	
}//end class


?>