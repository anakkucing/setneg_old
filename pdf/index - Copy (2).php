<?php
require_once 'koneksi.php';
require_once 'query.php';
require_once 'dom/autoload.inc.php';
use Dompdf\Dompdf;
$dompdf = new Dompdf();
?>

					<?php
						$alias = $_GET['alias'];
						$result = mysql_query("select k.kategori_nama, s.* from sop s left join kategori_sop k on s.kategori_id=k.kategori_id where s.sop_alias='$alias'");
							
						
						$Arr = array();
						$t = 0;
						while ($row=mysql_fetch_array($result)){
							$kategori = $row['kategori_nama'];
							$nm_satker = strtoupper($row['sop_nama_satker']);
							$alamat =$row['sop_alamat'];
							$no_sop =$row['sop_no'];
							$sop_logo =$row['sop_logo'];
							$tgl_sop = $row['sop_tgl_pembuatan'];
							$tgl_revisi = $row['sop_tgl_revisi'];
							$tgl_efektif = $row['sop_tgl_efektif'];
							$disahkan_jabatan = $row['sop_disahkan_jabatan'];
							$disahkan_nama = $row['sop_disahkan_nama'];
							$disahkan_nip = $row['sop_disahkan_nip'];
							$nama_sop = $row['sop_nama'];
							$dasar_hukumROW = $row['sop_dasar_hukum'];
							$kualifikasi_pelaksanaROW = $row['sop_kualifikasi'];
							$keterkaitanROW = $row['sop_keterkaitan'];
							$peralatanROW = $row['sop_peralatan'];
							$peringatanROW = $row['sop_peringatan'];
							$pencatatanROW = $row['sop_pencatatan'];
							$jmlpelaksana = $row['sop_jml_pelaksana'];
							$no_alias = $row['sop_alias'];
							$nama = $row['sop_pengesah_nama'];
							$gambar = ($row['sop_pengesah_gambar'] == '' ? '' : '<img src="ttd/'.$row['sop_pengesah_gambar'].'">');
							
							$Arr['kegiatan'][$t] = $row['sop_kegiatan'];
							$Arr['kelengkapan'][$t] = $row['sop_kelengkapan'];
							$Arr['waktu'][$t] = $row['sop_waktu'];
							$Arr['hasil'][$t] = $row['sop_hasil'];
							$Arr['keterangan'][$t] = $row['sop_keterangan'];
							$Arr['pelaksana1'][$t] = $row['sop_pelaksana1'];
							$Arr['pelaksana2'][$t] = $row['sop_pelaksana2'];
							$Arr['pelaksana3'][$t] = $row['sop_pelaksana3'];
							$Arr['pelaksana4'][$t] = $row['sop_pelaksana4'];
							$Arr['pelaksana5'][$t] = $row['sop_pelaksana5'];
							$Arr['pelaksana6'][$t] = $row['sop_pelaksana6'];
							$Arr['pel1'][$t] = $row['sop_nm_pel1'];
							$Arr['pel2'][$t] = $row['sop_nm_pel2'];
							$Arr['pel3'][$t] = $row['sop_nm_pel3'];
							$Arr['pel4'][$t] = $row['sop_nm_pel4'];
							$Arr['pel5'][$t] = $row['sop_nm_pel5'];
							$Arr['pel6'][$t] = $row['sop_nm_pel6'];
							$Arr['decision'][$t] = $row['sop_decision_perbaris'];
							$Arr['pelaksana_perbaris'][$t] = $row['sop_pelaksana_perbaris'];
							
							$t++;
						}
	
						$nod = 0;
						$dasar_hukum = '';
						$a1 = explode('<br>',$dasar_hukumROW);
						for($d=0;$d<count($a1);$d++){
							$nod++;
							if($a1[$d] != ''){
								$dasar_hukum .= (count(explode('<br>',$dasar_hukumROW)) > 2 ? '<tr valign=top><td width=5 style=border:none>'.$nod.'.</td>' : '').' <td style=border:none>'.$a1[$d].'</td></tr>';
							}
						};
						$nokp = 0;
						$kualifikasi_pelaksana = '';
						$a2 = explode('<br>',$kualifikasi_pelaksanaROW);
						for($kp=0;$kp<count($a2);$kp++){
							$nokp++;
							if($a2[$kp] != ''){
								$kualifikasi_pelaksana .= (count(explode('<br>',$kualifikasi_pelaksanaROW)) > 2 ? '<tr valign=top><td width=5 style=border:none>'.$nokp.'.' : '').' <td style=border:none>'.$a2[$kp].'</td></tr>';
							}
						};
						$nok = 0;
						$keterkaitan = '';
						$a3 = explode('<br>',$keterkaitanROW);
						for($k=0;$k<count($a3);$k++){
							$nok++;
							if($a3[$k] != ''){
								$keterkaitan .= (count(explode('<br>',$keterkaitanROW)) > 2 ? '<tr valign=top><td width=5 style=border:none>'.$nok.'.' : '').' <td style=border:none>'.$a3[$k].'</td></tr>';
							}
						};
						$nop = 0;
						$peralatan = '';
						$a4 = explode('<br>',$peralatanROW);
						for($p=0;$p<count($a4);$p++){
							$nop++;
							if($a4[$p] != ''){
								$peralatan .= (count(explode('<br>',$peralatanROW)) > 2 ? '<tr valign=top><td width=5 style=border:none>'.$nop.'.' : '').' <td style=border:none>'.$a4[$p].'</td></tr>';
							}
						};
						$nopr = 0;
						$peringatan = '';
						$a5 = explode('<br>',$peringatanROW);
						for($pr=0;$pr<count($a5);$pr++){
							$nopr++;
							if($a5[$pr] != ''){
								$peringatan .= (count(explode('<br>',$peringatanROW)) > 2 ? '<tr valign=top><td width=5 style=border:none>'.$nopr.'.' : '').' <td style=border:none>'.$a5[$pr].'</td></tr>';
							}
						};
						$nopc = 0;
						$pencatatan = '';
						$a6 = explode('<br>',$pencatatanROW);
						for($pc=0;$pc<count($a6);$pc++){
							$nopc++;
							if($a6[$pc] != ''){
								$pencatatan .= (count(explode('<br>',$pencatatanROW)) > 2 ? '<tr valign=top><td width=5 style=border:none>'.$nopc.'.' : '').' <td style=border:none>'.$a6[$pc].'</td></tr>';
							}
						};
					?>
					

<?php	
$html = '';				
$html .= '<html><header><title>'.$nama_sop.'</title></header><body>';				
$html .= '
<style>
@page { margin-top: 10px; margin-bottom: 50px; }
@font-face{
	font-family: code39;
	src:url(fonts/Code39.ttf);
}
body { margin-top: 10px; margin-bottom: 40px; }
*{margin:0; padding:0;}
td,th{padding:2px}
.header,
.footer {
    width: 100%;
    text-align: center;
    position: fixed;
}
.header {
    top: 0px;
}
.footer {
    bottom: 0px;
}
.pagenum:before {
    content: counter(page);
}
</style>
<!--<div class="header">
    Page <span class="pagenum"></span>
</div>
<div class="footer">
    Page <span class="pagenum"></span>
</div>-->
	
	
	
	
<div class="body">
					<div style="position:absolute; margin-left:27px; margin-bottom:-10px; padding:5px; font-size:12px; bottom:0;"><font face="code39" size="3">'.$alias.'</font></div>

					<table cellpadding="3" cellspacing="1" align="center" style="width:770px; margin-bottom:5px; font-family: arial; font-size:9px; margin-left:20px">
						<tr>
							<td style="font-family:arial">Jenis SOP : '.$kategori.'</td>
						</tr>
					</table>
					
					<table cellpadding="2" cellspacing="0" class="TableDetail" align="center" border="1" style="font-family:arial; font-size:9px; width:785px; margin-bottom:15px; margin-left:20px">
						<tr>
							<td rowspan="5" width="50%" align="center"  valign="top">
							<div style="height:60px"><br>';
								
								if($sop_logo == ''){ $html .='<img src="kemenag.jpg" width="80" height="80">';}
								if($sop_logo != ''){ $html .='<img src="'.$sop_logo.'" width="80" height="80">';}
								
								$html .='<br><br><div style="font-size:12px; text-transform: uppercase; font-weight:bold;">KEMENTERIAN AGAMA REPUBLIK INDONESIA</div>
								<b style="font-size:12px">'.str_replace('\N','<br>',$nm_satker).'</b><br>
								'.$alamat.'
							</div>
									
							</td>
							<th bgcolor="#e0db0d" align="left">Nomor SOP</th>
							<td>'.$no_sop.'</td>
						</tr>
						<tr>
							<th bgcolor="#e0db0d" align="left">Tanggal Pembuatan</th>
							<td>'.$tgl_sop.'</td>
						</tr>
						<tr>
							<th bgcolor="#e0db0d" align="left">Tanggal Revisi</th>
							<td>'.$tgl_revisi.'</td>
						</tr>
						<tr>
							<th bgcolor="#e0db0d" align="left">Tanggal Efektif</th>
							<td>'.$tgl_efektif.'</td>
						</tr>
						<tr>
							<th bgcolor="#e0db0d" align="left" valign="top">Disahkan Oleh</th>
							<td height="80" valign="top">
									'.$disahkan_jabatan.'
									<div id="bg_ttd" style="background:#eee; width:170px; height:70px; padding:2px; text-align:center; line-height:70px">
										'.$gambar.'
									</div>
									'.$disahkan_nama.'<br>
									NIP '.$disahkan_nip.'							
							</td>
						</tr>
						<tr>
							<td colspan="3" align="center" style="text-transform: uppercase; font-weight:bold; font-size:12px">'.$nama_sop.'</td>
						</tr>
						<tr>
							<th bgcolor="#e0db0d" align="left">Dasar Hukum</th>
							<th bgcolor="#e0db0d" colspan="2" align="left">Kualifikasi Pelaksana</th>
						</tr>
						<tr>
							<td height="70" valign="top"><table width=100% style="font-size:9px">'.$dasar_hukum.'</table></td>
							<td colspan="2" valign="top"><table width=100% style="font-size:9px">'.$kualifikasi_pelaksana.'</table></td>
						</tr>
						<tr>
							<th bgcolor="#e0db0d" align="left">Keterkaitan</th>
							<th bgcolor="#e0db0d" colspan="2" align="left">Peralatan / Perlengkapan</th>
						</tr>
						<tr>
							<td height="40" valign="top"><table width=100% style="font-size:9px">'.$keterkaitan.'</table></td>
							<td colspan="2" valign="top"><table width=100% style="font-size:9px">'.$peralatan.'</table></td>
						</tr>
						<tr bgcolor="#e0db0d">
							<td><b>Peringatan</b></td>
							<th bgcolor="#e0db0d" colspan="2" align="left">Pencatatan dan Pendataan</th>
						</tr>
						<tr>
							<td height="40" valign="top"><table width=100% style="font-size:9px">'.$peringatan.'</table></td>
							<td colspan="2" valign="top"><table width=100% style="font-size:9px">'.$pencatatan.'</table></td>
						</tr>
					</table>
					<table cellpadding="2" cellspacing="0" border="1" class="TableDetail Detail hasil" align="center" style="font-size:8px; width:785px; margin-left:20px">
								<tr bgcolor="#e0db0d" align="center">
									<th rowspan="2" width="10">No</th>
									<th rowspan="2">Kegiatan</th>
									<th colspan="'.$jmlpelaksana.'">Pelaksana</th>
									<th colspan="3">Mutu Baku</th>
									<th rowspan="2" width="60">Keterangan</th>
								</tr>
								<tr bgcolor="#e0db0d" align="center">';
									$no=0;
									for($i=0;$i<$jmlpelaksana;$i++){ 
									$no++;
										$html .='<th width="33">'.$Arr['pel'.$no.''][0].'</th>';
									}
									$html .='<th width="60">Kelengkapan</th>
									<th width="30">Waktu</th>
									<th width="50">Output</th>
								</tr>';
						
							$no=0;
							for($i=0;$i<$t;$i++){ 
							$no++;
							
								$html .='<tr>
									<td align="center">'.$no.'</td>
									<td style="height:80px">'.$Arr['kegiatan'][$i].'</td>';
									
										$q=0;
										$z=0;
										$pel='';
										for($p=0;$p<$jmlpelaksana;$p++){
											$z = $i-1;
											$q++;
									
										$html .='<td align="center">';
											
												if(substr($Arr['pelaksana'.$q.''][$i], -1) == 'Y'){
													if(($i==0) or ($no == $t)){$html .='<img src="awal-akhir.png">';}	// simbol akhir
													else{                                                                                                   // simbol proses atau decision
														if($Arr['decision'][$i] == 'Y'){
															$html .='<img src="decision.png">';
														}else{
															$html .='<img src="proses.png">';
														}
													}
													
													if($i > 0){
														if($Arr['decision'][$i] == 'Y'){
															if($Arr['decision'][$z] == 'Y'){
																$query = query('d-t-k-'.$Arr['pelaksana_perbaris'][$z].'-'.$q.'');
																$html .='<div style="background:url('.$query[0]['simbol_img_pdf'].') no-repeat right top; width:100px; height:87px; position:absolute; '.$query[0]['simbol_margin_pdf'].'">'; // untuk 1-2 margin-left:-96px untuk 1-3 margin-left:-151px
															}else{
																$query = query('d-t-'.$Arr['pelaksana_perbaris'][$z].'-'.$q.'');
																$html .='<div style="background:url('.$query[0]['simbol_img_pdf'].') no-repeat right top; width:100px; height:87px; position:absolute; '.$query[0]['simbol_margin_pdf'].'">'; // untuk 1-2 margin-left:-96px untuk 1-3 margin-left:-151px
															}
															$query1 = query(''.$Arr['pelaksana_perbaris'][$z].'-'.$q.'');
															$html .='<div style="background:url('.$query1[0]['simbol_img_pdf'].') no-repeat right top; width:100px; height:87px; position:absolute; '.$query1[0]['simbol_margin_pdf_decision'].'">'; // untuk 1-2 margin-left:-96px untuk 1-3 margin-left:-151px
														}else{
															if($Arr['decision'][$z] == 'Y'){
																$query = query('d-y-'.$Arr['pelaksana_perbaris'][$z].'-'.$q.'');
																$html .='<div style="background:url('.$query[0]['simbol_img_pdf'].') no-repeat right top; width:100px; height:87px; position:absolute; '.$query[0]['simbol_margin_pdf'].'">'; // untuk 1-2 margin-left:-96px untuk 1-3 margin-left:-151px
															}else{
																$query = query(''.$Arr['pelaksana_perbaris'][$z].'-'.$q.'');
																$html .='<div style="background:url('.$query[0]['simbol_img_pdf'].') no-repeat right top; width:100px; height:87px; position:absolute; '.$query[0]['simbol_margin_pdf'].'">'; // untuk 1-2 margin-left:-96px untuk 1-3 margin-left:-151px
															}
														}
													}
													
												}
										$html .='</td>';
									}
									$html .='<td>'.$Arr['kelengkapan'][$i].'</td>
									<td>'.$Arr['waktu'][$i].'</td>
									<td>'.$Arr['hasil'][$i].'</td>
									<td>'.$Arr['keterangan'][$i].'</td>
								</tr>';
							}
					$html .='</table>
</div>';
$html .='</body></html>';			
//	echo $html;	
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'potrait');
$dompdf->render();
$dompdf->stream("codexworld",array("Attachment"=>0));
?>