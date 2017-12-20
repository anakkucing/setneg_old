<?php
$id = '';
$username = '';
$fullname = '';
$foto = '';
$group = '';
$satker = '';
$unitkerja = '';
$bagian = '';
$nip = '';
$read = '';
$disabled = '';
$act = 'add_user';
foreach($edit->result_array() as $row){
	$id = $row['user_id'];
	$username = $row['user_name'];
	$fullname = $row['user_fullname'];
	$foto = $row['user_foto'];
	$group = $row['user_group_id'];
	$satker = $row['satuan_organisasi_id'];
	$unitkerja = $row['unit_kerja_id'];
	$bagian = $row['bagian_id'];
	$nip = $row['pegawai_nip'];
	$read = 'readonly';
	$act = 'edit_user';
}
if($this->settings_m->cek_null('user','user_name',$username) >= 1) $disabled = 'readonly';
?>

<div class="page">
	<div class="page-header">
      <h1 class="page-title"><?=$title?></h1>
      <ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="<?=base_url()?>dashboard">Dashboard</a></li>
		<li class="breadcrumb-item active">Settings</li>
	  </ol>
      <div class="page-header-actions">
		<a type="button" class="btn btn-warning" href="<?=base_url()?>settings/user_manager">
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
					<div class="Errors"></div>
					<div class="row">
					  <div class="form-group col-md-6">
                        <label class="form-control-label">Username</label>
                        <input type="text" class="form-control" name="username" placeholder="User Name" value="<?=$username?>" <?=$read?>/>
                      </div>
					  <div class="form-group col-md-6">
                        <label class="form-control-label">Password</label>
                        <input type="password" class="form-control" name="password" placeholder="Password"/>
                      </div>
					</div>
					<div class="row">
					  <div class="form-group col-md-6">
                        <label class="form-control-label">Group</label>
                        <select class="form-control" name="group" <?=$disabled?>>
							<option value="">Pilih Group</option>
							<?php foreach($dtgroup->result_array() as $row){?>
							<option value="<?=$row['user_group_id']?>" <?=($group == $row['user_group_id'] ? 'selected' : '')?>><?=$row['user_group_name']?></option>
							<?php } ?>
						</select>
                      </div>
					  <div class="form-group col-md-6">
                        <label class="form-control-label">Foto</label>
                        <input type="file" class="form-control" name="fileupload"/>
                        <input type="hidden" class="form-control" name="gambar" value="<?=$foto?>"/>
                      </div>
					</div>
				</div>
			  </div>
			  
			  
			  
			  <div class="panel">
				<div class="panel-heading">
				  <h3 class="panel-title">Profile Pegawai</h3>
				</div>
				<div class="panel-body">
					<div class="row">
					  <div class="form-group col-md-6">
                        <label class="form-control-label">Nama Pegawai</label>
                        <input type="text" class="form-control" name="nm_pegawai" placeholder="Nama Pegawai" value="<?=$fullname?>"/>
                      </div>
					  <div class="form-group col-md-6">
                        <label class="form-control-label">NIP</label>
                        <input type="text" class="form-control" name="nip" placeholder="NIP Pegawai" value="<?=$nip?>"/>
                      </div>
					</div>
					<div class="row">
					  <div class="form-group col-md-6">
                        <label class="form-control-label">Satuan Organisasi</label>
                        <select class="form-control" id="satker" name="satker" <?=$disabled?>>
							<option value="">Pilih Satuan Organisasi</option>
							<?php foreach($dtsatker->result_array() as $row){?>
							<option value="<?=$row['satuan_organisasi_id']?>" <?=($satker == $row['satuan_organisasi_id'] ? 'selected' : '')?>><?=$row['satuan_organisasi_nama']?></option>
							<?php } ?>
						</select>
                      </div>
					  <div class="form-group col-md-6">
                        <label class="form-control-label">Unit Kerja</label>
                        <select class="form-control" id="unitkerja" name="unitkerja" <?=$disabled?>>
							<option value="">Pilih Satuan Organisasi</option>
						</select>
                      </div>
					</div>
					<div class="row">
					  <div class="form-group col-md-6">
                        <label class="form-control-label">Bagian</label>
                        <select class="form-control" id="bagian" name="bagian" <?=$disabled?>>
							<option value="">Pilih Satuan Organisasi</option>
						</select>
                      </div>
					</div>
					<div class="text-right">
					  <button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</div>
			  </div>
			  
			  </form>
			  
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
				url: "<?=base_url()?>act_settings/<?=$act?>", 
				type: "POST",             // Type of request to be send, called as method
				data: new FormData(this), // Data sent to server, a set of key/value pairs (i.e. form fields and values)
				contentType: false,       // The content type used when sending data to the server.
				cache: false,             // To unable request pages to be cached
				processData:false,        // To send DOMDocument or non processed data file it is set to false
				success: function(data)   // A function to be called if request succeeds
				{
					if(data == '1'){
						alert('Data Berhasil Disimpan');
						location.href="<?=base_url()?>settings/user_manager"
					}else{
						  $('.alert').show();
						  $('.Errors').html('<div class="errors alert alert-danger alert-dismissible"><button type="button" class="close" aria-label="Close" data-dismiss="alert"><span aria-hidden="true">×</span></button><p>Errors : </p>'+data+'</div>');
					}
				}
				});
			}));
			
			
			<?php if($id!=0){ ?>
			$(document).ready(function(){ 
					$.post("<?php echo base_url();?>view/unit_kerja/<?=$satker?>/<?=$unitkerja?>",{},function(obj){
						$('#unitkerja').html(obj);
					});
					$.post("<?php echo base_url();?>view/bagian/<?=$unitkerja?>/<?=$bagian?>",{},function(obj){
						$('#bagian').html(obj);
					});
			}); 
			<?php } ?>
			$('#satker').change(function(){
				$.post("<?php echo base_url();?>view/unit_kerja/"+$('#satker').val(),{},function(obj){
					$('#unitkerja').html(obj);
				});
			});
			$('#unitkerja').change(function(){
				$.post("<?php echo base_url();?>view/bagian/"+$('#unitkerja').val(),{},function(obj){
					$('#bagian').html(obj);
				});
			});
</script>