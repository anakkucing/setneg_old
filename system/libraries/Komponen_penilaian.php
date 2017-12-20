<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*

This is one of the free scripts from www.dhtmlgoodies.com
You are free to use this script as long as this copyright message is kept intact

(c) Alf Magne Kalleland, http://www.dhtmlgoodies.com - 2005

*/

class CI_Komponen_penilaian {
	
	var $elementArray = array();
	
	
	
	function addToArray($id,$name,$parentID,$bobot,$level,$jmlsub,$jmlbobot,$parenttop){
		if(empty($parentID))$parentID=0;	
		$this->elementArray[$parentID][] = array($id,$name,$parentID,$bobot,$level,$jmlsub,$jmlbobot,$parenttop);
	}
	
	
	function drawTree(){
		$a = 0;
		for($no=0;$no<count($this->elementArray[0]);$no++){
			$a++;
			echo "<tr bgcolor='#f6ff01'>";
				echo "<td style='text-transform:capitalize'>".abjad($a).'. '.$this->elementArray[0][$no][1]."</td>";
				echo "<td>".$this->elementArray[0][$no][6]."</td>";	
				echo "<td><input type='hidden' name='nilai[]'>
						<input type='hidden' name='id[]' value='".$this->elementArray[0][$no][0]."'>
						<input type='hidden' name='parenttop[]' value='".$this->elementArray[0][$no][7]."'>
						<input type='hidden' name='parent[]' value='".$this->elementArray[0][$no][2]."'>
						<input type='hidden' name='nama[]' value='".$this->elementArray[0][$no][1]."'>
						<input type='hidden' name='bobot[]' value='".$this->elementArray[0][$no][3]."'>
				</td>";	
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
				if($this->elementArray[$parentID][$no][4] == 2){$tab = "&nbsp;&nbsp;&nbsp;&nbsp;"; $nosub = $b;}
				if($this->elementArray[$parentID][$no][4] == 3){$tab = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"; $nosub = abjad($b);}
				if($this->elementArray[$parentID][$no][4] == 4){$tab = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"; $nosub = $b.')';}
				
				echo "<tr>";
					echo "<td>".$tab.$nosub.'. '.$this->elementArray[$parentID][$no][1]."</td>";	
					echo "<td>"; if($this->elementArray[$parentID][$no][5] == 0){ echo "".$this->elementArray[$parentID][$no][3].""; } echo"</td>";	
					echo "<td>";
						if($this->elementArray[$parentID][$no][5] == 0){
							echo "<input name='nilai[]' style='background:#eee; border:1px solid #aaa' class='Nilai' value='".$this->elementArray[$parentID][$no][3]."'>";
						}else{
							echo "<input type='hidden' name='nilai[]'>";
						}
					echo "
						<input type='hidden' name='id[]' value='".$this->elementArray[$parentID][$no][0]."'>
						<input type='hidden' name='parenttop[]' value='".$this->elementArray[$parentID][$no][7]."'>
						<input type='hidden' name='parent[]' value='".$this->elementArray[$parentID][$no][2]."'>
						<input type='hidden' name='nama[]' value='".$this->elementArray[$parentID][$no][1]."'>
						<input type='hidden' name='bobot[]' value='".$this->elementArray[$parentID][$no][3]."'>
					</td>";	
				echo "</tr>";	
				
				$this->drawSubNode($this->elementArray[$parentID][$no][0]);
			}						
		}		
	}
	
}//end class


?>