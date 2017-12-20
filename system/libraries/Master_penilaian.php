<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*

This is one of the free scripts from www.dhtmlgoodies.com
You are free to use this script as long as this copyright message is kept intact

(c) Alf Magne Kalleland, http://www.dhtmlgoodies.com - 2005

*/

class CI_Master_penilaian {
	
	var $elementArray = array();
	
	
	
	function addToArray($id,$name,$parentID,$bobot,$level,$jmlsub,$jmlbobot,$parenttop){
		if(empty($parentID))$parentID=0;	
		$this->elementArray[$parentID][] = array($id,$name,$parentID,$bobot,$level,$jmlsub,$jmlbobot,$parenttop);
	}
	
	
	function drawTree(){
		$a = 0;
		for($no=0;$no<count($this->elementArray[0]);$no++){
			$a++;
			$lvl = $this->elementArray[0][$no][4]+1;
			
			echo "<tr bgcolor='#f6ff01'>";
				echo "<td style='text-transform:capitalize'>".abjad($a).'. '.$this->elementArray[0][$no][1]."</td>";
				echo "<td>".$this->elementArray[0][$no][6]."</td>";	
				echo "<td align='right'>
					<a href='".base_url()."master/komponen_penilaian/add/".$this->elementArray[0][$no][0]."/".$lvl."/".$this->elementArray[0][$no][0]."' class='btn btn-success btn-xs NewLink'><i class='fa fa-plus'></i></a> &nbsp;
					<a href='".base_url()."master/komponen_penilaian/edit/".$this->elementArray[0][$no][0]."' class='btn btn-warning btn-xs NewLink'><i class='fa fa-pencil'></i></a> &nbsp;
					<a href='".base_url()."act_master/delete_komponen_penilaian/".$this->elementArray[0][$no][0]."' class='confirmation btn btn-danger btn-xs'><i class='fa fa-times'></i></a>";	
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
				$lvl = $this->elementArray[$parentID][$no][4]+1;
				if($this->elementArray[$parentID][$no][4] == 2){$tab = "&nbsp;&nbsp;&nbsp;&nbsp;"; $nosub = $b;}
				if($this->elementArray[$parentID][$no][4] == 3){$tab = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"; $nosub = abjad($b);}
				if($this->elementArray[$parentID][$no][4] == 4){$tab = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"; $nosub = $b.')';}
				
				echo "<tr>";
					echo "<td>".$tab.$nosub.'. '.$this->elementArray[$parentID][$no][1]."</td>";	
					echo "<td>"; if($this->elementArray[$parentID][$no][5] == 0){ echo "".$this->elementArray[$parentID][$no][3].""; } echo"</td>";	
					echo "<td align='right'>
					<a href='".base_url()."master/komponen_penilaian/add/".$this->elementArray[$parentID][$no][0]."/".$lvl."/".$this->elementArray[$parentID][$no][7]."' class='btn btn-success btn-xs NewLink'><i class='fa fa-plus'></i></a> &nbsp;
					<a href='".base_url()."master/komponen_penilaian/edit/".$this->elementArray[$parentID][$no][0]."' class='btn btn-warning btn-xs NewLink'><i class='fa fa-pencil'></i></a> &nbsp;
					<a href='".base_url()."act_master/delete_komponen_penilaian/".$this->elementArray[$parentID][$no][0]."' class='confirmation btn btn-danger btn-xs'><i class='fa fa-times'></i></a>";	
				echo "</td>";	
				echo "</tr>";	
				
				$this->drawSubNode($this->elementArray[$parentID][$no][0]);
			}						
		}		
	}
	
}//end class


?>