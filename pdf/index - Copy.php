<?php
require_once 'koneksi.php';
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
							$dasar_hukum = $row['sop_dasar_hukum'];
							$kualifikasi_pelaksana = $row['sop_kualifikasi'];
							$keterkaitan = $row['sop_keterkaitan'];
							$peralatan = $row['sop_peralatan'];
							$peringatan = $row['sop_peringatan'];
							$pencatatan = $row['sop_pencatatan'];
							$jmlpelaksana = $row['sop_jml_pelaksana'];
							$no_alias = $row['sop_alias'];
							$nama = $row['sop_pengesah_nama'];
							$gambar = ($row['sop_pengesah_gambar'] == '' ? '' : '<img src="'.base_url().'assets/media/ttd/'.$row['sop_pengesah_gambar'].'">');
							
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
					?>
					

<?php	
$html = '';				
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
							<td style="font-family:arial">Jenis : '.$kategori.'</td>
						</tr>
					</table>
					
					<table cellpadding="2" cellspacing="0" class="TableDetail" align="center" border="1" style="font-family:arial; font-size:9px; width:785px; margin-bottom:15px; margin-left:20px">
						<tr>
							<td rowspan="5" width="50%" align="center"  valign="top">
							<div style="height:60px">';
								
								if($sop_logo == ''){ $html .='<img src="'.$baseurl.'assets/media/logo/kemenag.jpg" width="80" height="80">';}
								if($sop_logo != ''){ $html .='<img src="'.$sop_logo.'" width="80" height="80">';}
								
								$html .='<div style="font-size:12px; text-transform: uppercase; font-weight:bold;">KEMENTERIAN AGAMA REPUBLIK INDONESIA</div>
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
							<td colspan="3" align="center" style="text-transform: uppercase; font-weight:bold; font-size:12px">SOP PELAYANAN PENEGRIAN MADRASAH 567</td>
						</tr>
						<tr>
							<th bgcolor="#e0db0d" align="left">Dasar Hukum</th>
							<th bgcolor="#e0db0d" colspan="2" align="left">Kualifikasi Pelaksana</th>
						</tr>
						<tr>
							<td height="70" valign="top">'.$dasar_hukum.'</td>
							<td colspan="2" valign="top">'.$kualifikasi_pelaksana.'</td>
						</tr>
						<tr>
							<th bgcolor="#e0db0d" align="left">Keterkaitan</th>
							<th bgcolor="#e0db0d" colspan="2" align="left">Peralatan / Perlengkapan</th>
						</tr>
						<tr>
							<td height="40" valign="top">'.$keterkaitan.'</td>
							<td colspan="2" valign="top">'.$peralatan.'</td>
						</tr>
						<tr bgcolor="#e0db0d">
							<td><b>Peringatan</b></td>
							<th bgcolor="#e0db0d" colspan="2" align="left">Pencatatan dan Pendataan</th>
						</tr>
						<tr>
							<td height="40" valign="top">'.$peringatan.'</td>
							<td colspan="2" valign="top">'.$pencatatan.'</td>
						</tr>
					</table>
					<table cellpadding="2" cellspacing="0" border="1" class="TableDetail Detail hasil" align="center" style="font-size:8px; width:785px; margin-left:20px">
								<tr bgcolor="#e0db0d" align="center">
									<th rowspan="2" width="10">No</th>
									<th rowspan="2">Kegiatan</th>
									<th colspan="3">Pelaksana</th>
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
								</tr>
								<tr>
									<td align="center">1</td>
									<td style="height:80px">
										Pengembalian SPPH yang sudah di tandatangani dan di stempel dinas kepada petugas PHK. SPPH diserhkan : <br>a. Lembar ke-1 untuk Bank <br>b. Lembar ke-2 untk Arsip <br>c. Lembar ke-3 untuk PIHK
									</td>
																			<td align="center">
											<img src="awal-akhir.png">										</td>
																			<td align="center">
																					</td>
																			<td align="center">
																					</td>
										
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr><tr>
									<td align="center">3</td>
									<td style="height:80px">d</td>
																			<td align="center">
																					</td>
																			<td align="center">
																			<img src="proses.png">
																				<div style="background:url(1-2.png) no-repeat right top; width:100px; height:87px; position:absolute; margin-top:-39px; margin-left:-80px;">
																					</td>
																			<td align="center">
																		</td>
										
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
																<tr>
									<td align="center">2</td>
									<td style="height:80px; padding:2px">Kegiatan test tulisan</td>
																			<td align="center">
																					</td>
																			<td align="center">
											<img src="decision.png">
											<div style="background:url(1-1.png) no-repeat right top; width:100px; height:87px; position:absolute; margin-top:-39px; margin-left:-63px;">
															
															<div style="background:url(d-t-1-1.png) no-repeat right top; width:100px; height:87px; position:absolute; margin-top:-9px; margin-left:-13px;"></div>
																			</td>
																			<td align="center">
																					</td>
										
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
																<tr>
									<td align="center">3</td>
									<td style="height:80px">d</td>
																			<td align="center">
																					</td>
																			<td align="center">
																					</td>
																			<td align="center">
											<img src="proses.png"><div style="background:url(d-y-1-2.png) no-repeat right top; width:100px; height:87px; position:absolute; margin-top:-39px; margin-left:-77px;"></div>							</td>
										
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr><tr>
									<td align="center">3</td>
									<td style="height:80px">d</td>
																			<td align="center">
																					</td>
																			<td align="center">
																		</td>
																			<td align="center">
																			<img src="proses.png">
																				<div style="background:url(1-1.png) no-repeat right top; width:100px; height:87px; position:absolute; margin-top:-39px; margin-left:-60px;">
																					</td>
										
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
																<tr>
									<td align="center">5</td>
									<td style="height:80px">g</td>
																			<td align="center">
											<img src="awal-akhir.png">
												<div style="background:url(2-1.png) no-repeat right top; width:100px; height:87px; position:absolute; margin-top:-39px; margin-left:-60px;">
											</td>
																			<td align="center">
																					</td>
																			<td align="center">
																					</td>
										
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
					</table>
</div>';
					
					
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'potrait');
$dompdf->render();
$dompdf->stream("codexworld",array("Attachment"=>0));
?>