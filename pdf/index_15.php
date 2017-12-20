<?php
//require_once 'koneksi.php';
//require_once 'query.php';
require_once 'dom/autoload.inc.php';
use Dompdf\Dompdf;
$dompdf = new Dompdf();
	
$html = '';				
$html .= '<html><header><title>Test</title></header><body>';				
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
					<table class="TableKeg" style="width:29.6cm; font-size:7px; font-family:arial; color:#000" cellspacing="0" cellpadding="2" border="1" align="center">
								<tbody><tr bgcolor="#ddd" align="center">
									<th rowspan="2" width="20">No</th>
									<th rowspan="2">Kegiatan</th>
									<th colspan="15">Pelaksana</th><th colspan="3">Mutu Baku</th>
									<th rowspan="2" width="70">Keterangan</th>
								</tr>
								<tr bgcolor="#ddd" align="center"><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th style="width:35px; height:35px;">
													<div style="width:35px; height:35px; word-wrap: break-word">
														<input name="pelaksana[]" value="a" type="hidden">a
													</div></th><th width="50">Kelengkapan</th>
									<th width="30">Waktu</th>
									<th width="50">Hasil</th>
								</tr><tr>
										<td>1</td>
										<td style="height:180px; overflow:hidden" height="180"><input name="kegiatan[]" value="a" type="hidden">
											a
											<input name="pelaksana_perbaris[]" value="1" type="hidden">
											<input name="decision_perbaris[]" value="" type="hidden">
										</td>
										<td align="center"><input name="check_pelaksana1_0" value="1-Y" type="hidden">
												<img src="awal-akhir.png">
										</td>
										<td align="center"><input name="check_pelaksana1_0" value="1-Y" type="hidden">
												<img src="awal-akhir.png">
										</td>
										<td align="center"><input name="check_pelaksana1_0" value="1-Y" type="hidden">
												<img src="awal-akhir.png">
										</td>
										<td align="center"><input name="check_pelaksana1_0" value="1-Y" type="hidden">
												<img src="awal-akhir.png">
										</td>
										<td align="center"><input name="check_pelaksana1_0" value="1-Y" type="hidden">
												<img src="awal-akhir.png">
										</td>
										<td align="center"><input name="check_pelaksana1_0" value="1-Y" type="hidden">
												<img src="awal-akhir.png">
										</td>
										<td align="center"><input name="check_pelaksana1_0" value="1-Y" type="hidden">
												<img src="awal-akhir.png">
										</td>
										<td align="center"><input name="check_pelaksana1_0" value="1-Y" type="hidden">
												<img src="awal-akhir.png">
										</td>
										<td align="center"><input name="check_pelaksana1_0" value="1-Y" type="hidden">
												<img src="awal-akhir.png">
										</td>
										<td align="center"><input name="check_pelaksana1_0" value="1-Y" type="hidden">
												<img src="awal-akhir.png">
										</td>
										<td align="center"><input name="check_pelaksana1_0" value="1-Y" type="hidden">
												<img src="awal-akhir.png">
										</td>
										<td align="center"><input name="check_pelaksana1_0" value="1-Y" type="hidden">
												<img src="awal-akhir.png">
										</td>
										<td align="center"><input name="check_pelaksana1_0" value="1-Y" type="hidden">
												<img src="awal-akhir.png">
										</td>
										<td align="center"><input name="check_pelaksana1_0" value="1-Y" type="hidden">
												<img src="awal-akhir.png">
										</td>
											<td align="center"><input name="check_pelaksana2_0" value="" type="hidden"></td><td><input name="tr[]" value="" type="hidden"><input name="kelengkapan[]" value="" type="hidden"></td>
										<td><input name="waktu[]" value="" type="hidden"></td>
										<td><input name="hasil[]" value="" type="hidden"></td>
										<td><input name="keterangan[]" value="" type="hidden"></td>
									</tr><tr>
										<td>2</td>
										<td style="height:180px; overflow:hidden" height="180"><input name="kegiatan[]" value="a" type="hidden">
											a
											<input name="pelaksana_perbaris[]" value="2" type="hidden">
											<input name="decision_perbaris[]" value="" type="hidden">
										</td>
										<td align="center"><input name="check_pelaksana1_1" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana1_1" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana1_1" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana1_1" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana1_1" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana1_1" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana1_1" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana1_1" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana1_1" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana1_1" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana1_1" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana1_1" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana1_1" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana1_1" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana2_1" value="2-Y" type="hidden"><img src="proses.png"></td><td><input name="tr[]" value="" type="hidden"><input name="kelengkapan[]" value="" type="hidden"></td>
										<td><input name="waktu[]" value="" type="hidden"></td>
										<td><input name="hasil[]" value="" type="hidden"></td>
										<td><input name="keterangan[]" value="" type="hidden"></td>
									</tr><tr>
										<td>3</td>
										<td style="height:180px; overflow:hidden" height="180"><input name="kegiatan[]" value="a" type="hidden">
											a
											<input name="pelaksana_perbaris[]" value="1" type="hidden">
											<input name="decision_perbaris[]" value="" type="hidden">
										</td>
										<td align="center"><input name="check_pelaksana1_2" value="1-Y" type="hidden"><img src="awal-akhir.png">
										</td>
										<td align="center"><input name="check_pelaksana2_2" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana2_2" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana2_2" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana2_2" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana2_2" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana2_2" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana2_2" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana2_2" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana2_2" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana2_2" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana2_2" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana2_2" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana2_2" value="" type="hidden"></td>
										<td align="center"><input name="check_pelaksana2_2" value="" type="hidden"></td>
										<td><input name="tr[]" value="" type="hidden"><input name="kelengkapan[]" value="" type="hidden"></td>
										<td><input name="waktu[]" value="" type="hidden"></td>
										<td><input name="hasil[]" value="" type="hidden"></td>
										<td><input name="keterangan[]" value="" type="hidden"></td>
									</tr></tbody></table>
</div>';
$html .='</body></html>';			
//	echo $html;	
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'landscape');
$dompdf->render();
$dompdf->stream("codexworld",array("Attachment"=>0));
?>