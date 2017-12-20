<?php
$id = '';
$nama = $fullname;
$satkerid = $satkerid;
$unitkerjaid = $unitkerjaid;
$jabatan = '';
$fileori = '';
$status = 'Y';
$act = 'add_jabatan_pengesah';
foreach($edit->result_array() as $row){
	$id = $row['ttd_pengesah_id'];
	$satkerid = $row['satuan_organisasi_id'];
	$unitkerjaid = $row['unit_kerja_id'];
	$jabatan = $row['ttd_pengesah_jabatan'];
	$nama = $row['ttd_pengesah_nama'];
	$fileori = $row['ttd_pengesah_gambar'];
	$status = $row['ttd_pengesah_status'];
	$act = 'edit_jabatan_pengesah';
}

?>

<div class="page">
	<div class="page-header">
      <h1 class="page-title"><?=$title?></h1>
      <ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="<?=base_url()?>dashboard">Dashboard</a></li>
		<li class="breadcrumb-item active">Master</li>
	  </ol>
      <div class="page-header-actions">
		<a type="button" class="btn btn-warning" href="<?=base_url()?>master/jabatan_pengesah">
			<i class="icon wb-arrow-left" aria-hidden="true"></i> Back
		</a>
      </div>
    </div>
	
	
    <div class="page-content container-fluid">
      <div class="row">
	  
			<div class="col-lg-12">
			  <!-- Panel Summary Mode -->
			  <div class="panel">
				<div class="panel-heading">
				  <h3 class="panel-title">Add <?=$title?></h3>
				</div>
				<div class="panel-body">
				  <form class="form-horizontal" id="FrmAjax">
				  <input type="hidden" name="id" value="<?=$id?>"/>
				  <input type="hidden" name="satker" value="<?=$satkerid?>"/>
				  <input type="hidden" name="unitkerja" value="<?=$unitkerjaid?>"/>
				  <input type="hidden" name="fileori" value="<?=$fileori?>"/>
					<div class="Errors"></div>
					<div class="form-group row">
					  <label class="col-md-3 form-control-label">Nama Pengesah</label>
					  <div class="col-md-6">
						<input type="text" class="form-control" name="nama" value="<?=$nama?>" readonly/>
					  </div>
					</div>
					<div class="form-group row">
					  <label class="col-md-3 form-control-label">Jabatan Pengesah</label>
					  <div class="col-md-6">
						<input type="text" class="form-control" name="jabatan" value="<?=$jabatan?>"/>
					  </div>
					</div>
					<div class="form-group row">
					  <label class="col-md-3 form-control-label">Gambar Tanda Tangan</label>
					  <div class="col-md-6">
						<input type="file" class="form-control" name="ttd"/><br>
						<i>Ukuran max: 200px X 100px</i>
					  </div>
					  <div class="col-md-3">
						<?=($fileori != '' ? '<img src="'.base_url().'assets/media/ttd/'.$fileori.'" width="100">' : '')?>
					  </div>
					</div>
					<div class="form-group row">
					  <label class="col-md-3 form-control-label">Status</label>
					  <div class="col-md-9">
						  <div class="radio-custom radio-default radio-inline">
							<input type="radio" id="a" name="status" value="Y" <?=($status == 'Y' ? 'checked' : '')?>/>
							<label for="a">Aktif</label>
						  </div>
						  <div class="radio-custom radio-default radio-inline">
							<input type="radio" id="n" name="status" value="N" <?=($status == 'N' ? 'checked' : '')?>/>
							<label for="n">Nonktif</label>
						  </div>
					  </div>
                      
                    </div>
					<div class="text-right">
					  <button type="submit" class="btn btn-primary">Submit</button>
					</div>
				  </form>
				</div>
			  </div>
			  
			  
			  <!-- End Panel Summary Mode -->
			</div>
		
      </div>
    </div>
	
	
  </div>
  
  
  
  
  
<script>
			// action save
			$("#FrmAjax").on('submit',(function(e) {
				e.preventDefault();
				$.ajax({
				url: "<?=base_url()?>act_master/<?=$act?>", 
				type: "POST",             // Type of request to be send, called as method
				data: new FormData(this), // Data sent to server, a set of key/value pairs (i.e. form fields and values)
				contentType: false,       // The content type used when sending data to the server.
				cache: false,             // To unable request pages to be cached
				processData:false,        // To send DOMDocument or non processed data file it is set to false
				success: function(data)   // A function to be called if request succeeds
				{
					if(data == '1'){
						alert('Data Berhasil Disimpan');
						location.href="<?=base_url()?>master/jabatan_pengesah"
					}else{
						  $('.alert').show();
						  $('.Errors').html('<div class="errors alert alert-danger alert-dismissible"><button type="button" class="close" aria-label="Close" data-dismiss="alert"><span aria-hidden="true">×</span></button><p>Errors : </p>'+data+'</div>');
					}
				}
				});
			}));
</script>