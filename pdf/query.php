<?php 
function query($nama){
	$data = array();
	//$sql = "select simbol_img_pdf,simbol_margin_pdf,simbol_margin_pdf_decision from simbol where simbol_nama='".$nama."'";
	$sql = "select simbol_img,simbol_margin,simbol_margin_pdf_decision from simbol where simbol_nama='".$nama."'";
	$res = mysql_query($sql);
    while ($row = mysql_fetch_array($res)){
        $data[] = $row;
    }
    return $data;     
}
?>