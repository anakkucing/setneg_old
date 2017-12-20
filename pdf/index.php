<?php
require_once 'koneksi.php';
require_once 'query.php';
require_once 'dom/autoload.inc.php';
use Dompdf\Dompdf;
$dompdf = new Dompdf();

						$alias = $_GET['alias'];
						$result = mysql_query("select k.kategori_nama, s.*, su.sop_update_file from sop s left join kategori_sop k on s.kategori_id=k.kategori_id left join sop_update su on su.sop_alias=s.sop_alias where md5(s.sop_alias)='$alias'");
							
						
						$Arr = array();
						$t = 0;
						while ($row=mysql_fetch_array($result)){
							$kategori = $row['kategori_nama'];
							$nm_satker = strtoupper($row['sop_nama_satker']);
							$nm_unitkerja =$row['sop_unit_kerja'];
							$no_sop =$row['sop_no'];
							$tgl_sop = $row['sop_tgl_pembuatan'];
							$tgl_revisi = $row['sop_tgl_revisi'];
							$tgl_efektif = $row['sop_tgl_efektif'];
							$gambar = $row['sop_pengesah_gambar'];
							$disahkan_jabatan = $row['sop_disahkan_jabatan'];
							$disahkan_nama = $row['sop_disahkan_nama'];
							$disahkan_nip = $row['sop_disahkan_nip'];
							$nama_sop = $row['sop_nama'];
							$dasar_hukumROW = $row['sop_dasar_hukum'];
							$kualifikasi_pelaksana = $row['sop_kualifikasi'];
							$keterkaitan = $row['sop_keterkaitan'];
							$peralatan = $row['sop_peralatan'];
							$peringatan = $row['sop_peringatan'];
							$pencatatan = $row['sop_pencatatan'];
							$jmlpelaksana = $row['sop_jml_pelaksana'];
							
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
							$Arr['pelaksana7'][$t] = $row['sop_pelaksana7'];
							$Arr['pelaksana8'][$t] = $row['sop_pelaksana8'];
							$Arr['pelaksana9'][$t] = $row['sop_pelaksana9'];
							$Arr['pelaksana10'][$t] = $row['sop_pelaksana10'];
							$Arr['pelaksana11'][$t] = $row['sop_pelaksana11'];
							$Arr['pelaksana12'][$t] = $row['sop_pelaksana12'];
							$Arr['pelaksana13'][$t] = $row['sop_pelaksana13'];
							$Arr['pelaksana14'][$t] = $row['sop_pelaksana14'];
							$Arr['pelaksana15'][$t] = $row['sop_pelaksana15'];
							$Arr['pel1'][$t] = $row['sop_nm_pel1'];
							$Arr['pel2'][$t] = $row['sop_nm_pel2'];
							$Arr['pel3'][$t] = $row['sop_nm_pel3'];
							$Arr['pel4'][$t] = $row['sop_nm_pel4'];
							$Arr['pel5'][$t] = $row['sop_nm_pel5'];
							$Arr['pel6'][$t] = $row['sop_nm_pel6'];
							$Arr['pel7'][$t] = $row['sop_nm_pel7'];
							$Arr['pel8'][$t] = $row['sop_nm_pel8'];
							$Arr['pel9'][$t] = $row['sop_nm_pel9'];
							$Arr['pel10'][$t] = $row['sop_nm_pel10'];
							$Arr['pel11'][$t] = $row['sop_nm_pel11'];
							$Arr['pel12'][$t] = $row['sop_nm_pel12'];
							$Arr['pel13'][$t] = $row['sop_nm_pel13'];
							$Arr['pel14'][$t] = $row['sop_nm_pel14'];
							$Arr['pel15'][$t] = $row['sop_nm_pel15'];
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
						
						$jmlpel = 0;
						for($p=0;$p<$jmlpelaksana;$p++){
								$jmlpel++;
						}
						// batas 10
						$jmlpel = ($jmlpel <= 10 ? $jmlpel : 10);


$html = '';				
$html .= '<html><header><title>'.$nama_sop.'</title></header><body>';				
$html .= '
<style>

@font-face{
	font-family: code39;
	src:url(fonts/Code39.ttf);
}
body { margin-top: 20px; margin-bottom: 0px; margin-left: 0px; }
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
					<table class="TableDetail" style="width:32cm; font-size:9px; font-family:sans-serif; color:#000" cellspacing="0" cellpadding="3" border="1" align="center">
							<tbody><tr valign="top">
								<td width="50%" align="center" height="110"><br><img src="sekneg.png" width="60" height="60">
									<br><br>
									<div style="text-transform: uppercase; font-weight:bold;">KEMENTERIAN SEKRETARIAT NEGARA<br>REPUBLIK INDONESIA</div><br>
									<b>'.$nm_satker.'</b><br><br>
									<b style="text-transform: uppercase;">'.$nm_unitkerja.'</b>
								</td>
								<td width="50%" align="center">
									<div style="border-bottom:1px solid #000; text-align:left; margin-left:-2px; margin-right:-2px; padding:2px 0px">
										<div style="float:left; width:114px;"><b>NOMOR SOP</b></div>
										<div style="float:left; width:10px;">:</div>
										<div style="float:left; width:450px;">'.$no_sop.'</div>
										<div style="clear:both"></div>
									</div>
									<div style="border-bottom:1px solid #000; text-align:left; margin-left:-2px; margin-right:-2px; padding:2px 0px">
										<div style="float:left; width:114px;"><b>TGL. PEMBUATAN</b></div>
										<div style="float:left; width:10px;">:</div>
										<div style="float:left; width:450px;">'.$tgl_sop.'</div>
										<div style="clear:both"></div>
									</div>
									<div style="border-bottom:1px solid #000; text-align:left; margin-left:-2px; margin-right:-2px; padding:2px 0px">
										<div style="float:left; width:114px;"><b>TGL. REVISI</b></div>
										<div style="float:left; width:10px;">:</div>
										<div style="float:left; width:450px;">'.$tgl_revisi.'</div>
										<div style="clear:both"></div>
									</div>
									<div style="border-bottom:1px solid #000; text-align:left; margin-left:-2px; margin-right:-2px; padding:2px 0px">
										<div style="float:left; width:114px;"><b>TGL. EFEKTIF</b></div>
										<div style="float:left; width:10px;">:</div>
										<div style="float:left; width:450px;">'.$tgl_efektif.'</div>
										<div style="clear:both"></div>
									</div>
									<div style="border-bottom:1px solid #000; text-align:left; margin-left:-2px; margin-right:-2px; padding:2px 0px;">
										<div style="float:left; width:114px;"><b>DISAHKAN OLEH</b></div>
										<div style="float:left; width:10px;">:</div>
										<div style="float:left; width:450px;">'.$disahkan_jabatan.' <br><br>
											'.($gambar != '' ? '<img src="../assets/media/ttd/'.$gambar.'" height="25" width="60">' : '<br>').'<br><br>
											'.$disahkan_nama.' NIP '.$disahkan_nip.'
										</div>
										<div style="clear:both"></div>
									</div>
									<div style="text-align:left; margin-left:-2px; margin-right:-2px; padding:2px 0px">
										<div style="float:left; width:114px;"><b>NAMA SOP</b></div>
										<div style="float:left; width:10px;">:</div>
										<div style="float:left; width:69%;">'.$nama_sop.'</div>
										<div style="clear:both"></div>
									</div>
								</td>
							</tr>
							<tr>
								<td><b>DASAR HUKUM:</b></td>
								<td><b>KUALIFIKASI PELAKSANA:</b></td>
							</tr>
							<tr valign="top">
								<td><div style="height:140px; overflow:hidden">
									<table width=100% style="font-size:8px;">'.$dasar_hukum.'</table>
									</div>
								</td>
								<td><div style="height:140px; overflow:hidden">
									'.$kualifikasi_pelaksana.'
									</div>
								</td>
							</tr>
							<tr>
								<td><b>KETERKAITAN:</b></td>
								<td><b>PERALATAN/PERLENGKAPAN:</b></td>
							</tr>
							<tr valign="top">
								<td>
									<div style="height:70px; overflow:hidden">
									'.$keterkaitan.'
									</div>
								</td>
								<td>
									<div style="height:70px; overflow:hidden">
									'.$peralatan.'
									</div>
								</td>
							</tr>
							<tr>
								<td><b>PERINGATAN:</b></td>
								<td><b>PENCATATAN DAN PENDATAAN:</b></td>
							</tr>
							<tr valign="top">
								<td>
									<div style="height:45px; overflow:hidden">
									'.$peringatan.'
									</div>
								</td>
								<td>
									<div style="height:45px; overflow:hidden">
									'.$pencatatan.'
									</div>
								</td>
							</tr>
						</tbody></table>
						
						
						<table class="TableKeg" style="margin-top:20px; width:32cm; font-size:9px; font-family:sans-serif; color:#000" cellspacing="0" cellpadding="2" border="1" align="center">
								<tbody><tr bgcolor="#ddd" align="center">
									<th rowspan="2" width="20">No.</th>
									<th rowspan="2">Kegiatan</th>
									<th colspan="'.$jmlpel.'">Pelaksana</th>';
									if($jmlpelaksana > 10){
											$no=10;
											for($p=10;$p<$jmlpelaksana;$p++){
												$no++;
													$html .='<th rowspan="2" style="width:35px; height:35px;">
														<div style="width:35px; height:35px; word-wrap: break-word; overflow:hidden">
															'.$Arr['pel'.$no.''][0].'
														</div></th>';
											}
										}
									$html .='<th colspan="3">Mutu Baku</th>
									<th rowspan="2" width="70">Keterangan</th>
								</tr>
								<tr bgcolor="#ddd" align="center">';
											$no=0;
											for($i=0;$i<$jmlpel;$i++){ 
											$no++;
												$html .='<th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word; overflow:hidden">
														'.$Arr['pel'.$no.''][0].'
													</div>
												</th>';
											}
									$html .='<th width="50">Kelengkapan</th>
									<th width="30">Waktu</th>
									<th width="50">Output</th>
								</tr>';
									$no=0;
									for($i=0;$i<$t;$i++){ 
									$no++;
										$html .='<tr>
												<td>'.$no.'</td>
												<td>
													<div style="height:135px; overflow:hidden; word-wrap: break-word;">
														'.$Arr['kegiatan'][$i].'
													</div>
												</td>';
												
												$q=0;
												$z=0;
												$pel='';
												$disnama = '';
												for($p=0;$p<$jmlpelaksana;$p++){
													$z = $i-1;
													$q++;
													
													$html .='<td align="center">';
														if(substr($Arr['pelaksana'.$q.''][$i], -1) == 'Y'){
															if(($i==0) or ($no == $t)){$html .='<img src="awal-akhir.png">';} 
															else{                                                                                                  
																if($Arr['decision'][$i] == 'Y'){
																	$html .='<img src="decision.png">';
																}else{
																	$html .='<img src="proses.png">';
																}
															}
															
															if($i > 0){
																if(substr($Arr['decision'][$i],-1) == 'Y'){
																	if(substr($Arr['decision'][$z],-1) == 'Y'){
																		$query = query('d-y-'.$Arr['pelaksana_perbaris'][$z].'-'.$q.'');
																		$html .='<div style="background:url(../assets/media/simbol/'.$query[0]['simbol_img'].') no-repeat right top; width:100px; height:165px; position:absolute; '.$query[0]['simbol_margin'].'">'; // untuk 1-2 margin-left:-96px untuk 1-3 margin-left:-151px
																	}else{
																		$query = query(''.$Arr['pelaksana_perbaris'][$z].'-'.$q.'');
																		$html .='<div style="background:url(../assets/media/simbol/'.$query[0]['simbol_img'].') no-repeat right top; width:100px; height:165px; position:absolute; '.$query[0]['simbol_margin'].'">'; // untuk 1-2 margin-left:-96px untuk 1-3 margin-left:-151px
																	}
																	$query = query('d-t-'.$Arr['pelaksana_perbaris'][$z].'-'.$q.'');
																		$html .='<div style="background:url(../assets/media/simbol/'.$query[0]['simbol_img'].') no-repeat right top; width:100px; height:165px; position:absolute; '.$query[0]['simbol_margin'].'">'; // untuk 1-2 margin-left:-96px untuk 1-3 margin-left:-151px
																}else{
																	if(substr($Arr['decision'][$z],-1) == 'Y'){
																		$query = query('d-y-'.$Arr['pelaksana_perbaris'][$z].'-'.$q.'');
																		$html .='<div style="background:url(../assets/media/simbol/'.$query[0]['simbol_img'].') no-repeat right top; width:100px; height:165px; position:absolute; '.$query[0]['simbol_margin'].'">'; // untuk 1-2 margin-left:-96px untuk 1-3 margin-left:-151px
																	}else{
																		if(count(explode(',',$Arr['pelaksana_perbaris'][$i])) > 1){
																			if($disnama != $Arr['pelaksana_perbaris'][$z].'-'.$Arr['pelaksana_perbaris'][$i]){
																				$disnama = $Arr['pelaksana_perbaris'][$z].'-'.$Arr['pelaksana_perbaris'][$i];
																				$query = query(''.$Arr['pelaksana_perbaris'][$z].'-'.$Arr['pelaksana_perbaris'][$i].'');
																				$html .='<div style="background:url(../assets/media/simbol/'; if($query){$html .= $query[0]['simbol_img'];} $html .=')no-repeat right top; width:100px; height:165px; position:absolute; '; if($query){$html .= $query[0]['simbol_margin'];} $html .='">'; 
																			}
																		}else{
																			$query = query(''.$Arr['pelaksana_perbaris'][$z].'-'.$q.'');
																			$html .='<div style="background:url(../assets/media/simbol/'; if($query){$html .= $query[0]['simbol_img'];} $html .=')no-repeat right top; width:100px; height:165px; position:absolute; '; if($query){$html .= $query[0]['simbol_margin'];} $html .='">';
																		}
															
																	}
																}
															}
														
														
														}
													$html .='</td>';
													
												}
												$html .='
												<td>
													<div style="height:135px; overflow:hidden; word-wrap: break-word;">
														'.$Arr['kelengkapan'][$i].'
													</div>
												</td>
												<td>
													<div style="height:135px; overflow:hidden; word-wrap: break-word;">
													'.$Arr['waktu'][$i].'
													</div>
												</td>
												<td>
													<div style="height:135px; overflow:hidden; word-wrap: break-word;">
													'.$Arr['hasil'][$i].'
													</div>
												</td>
												<td>
													<div style="height:135px; overflow:hidden; word-wrap: break-word;">
													'.$Arr['keterangan'][$i].'
													</div>
												</td>
										</tr>';
									}
							$html .='</tbody>
						</table>
</div>';
$html .='</body></html>';			
//	echo $html;	
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'landscape');
$dompdf->render();
$dompdf->stream("codexworld",array("Attachment"=>0));
?>