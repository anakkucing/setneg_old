<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*

This is one of the free scripts from www.dhtmlgoodies.com
You are free to use this script as long as this copyright message is kept intact

(c) Alf Magne Kalleland, http://www.dhtmlgoodies.com - 2005

*/

class CI_Grade {
	
	function Grade($nilai)
	  {
		if ($nilai >= 90) {
		  $grade = "A";
		} elseif (($nilai >= 75) && ($nilai <= 89.99)) {
		  $grade = "B";
		} elseif (($nilai >= 65) && ($nilai <= 74.99)) {
		  $grade = "C";
		} elseif (($nilai >= 50) && ($nilai <= 64.99)) {
		  $grade = "D";
		} else {
		  $grade = "E";
		}
		return $grade;
	  }
	
}//end class


?>