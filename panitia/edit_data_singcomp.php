<?php 
require_once "../functions/config.php";
$title = 'Ubah Data Singcomp';
require_once "header.php";
?>

		<div class="section">
        
        	<div class="container container-body" >

<?php

?>
				<form class="form-horizontal" id="submit_form" method="POST">
	
					<div class="row">
	
						<div class="col-sm-12">
	
							<h2><a href="singcomp.php">Singcomp</a> <span class="glyphicon glyphicon-chevron-right"></span><span class="glyphicon glyphicon-chevron-right"></span> <a href="">Ubah Data Peserta</a></h2>
			        		<hr>	
						</div>
	
					</div>
<?php
    if(!$_SESSION['admin']){

        echo '<div class="alert alert-danger"><center>Anda harus login untuk membuka halaman ini.</center></div>';

    }else{

        if($data_admin['status'] != 1 && $data_admin['status'] !=2 && $data_admin['status'] !=5){
            
            echo '<div class="alert alert-danger"><center>Anda tidak memiliki akses untuk membuka halaman ini.</center></div>';
        
        }else{

        	$id = $_GET['id'];
			$sql = $conn->query("SELECT * FROM singcomp_parsial WHERE id='$id'");
			$data= $sql->fetch_assoc();

			if ($_POST['simpan']) {

				$nama   		= $conn->real_escape_string($_POST['nama-team']);
				$genre   		= $conn->real_escape_string($_POST['genre']);
				$kampus_asal	= $conn->real_escape_string($_POST['kampus-asal']);
				$alamat 		= $conn->real_escape_string($_POST['alamat']);
				$official 		= $conn->real_escape_string($_POST['nama-pj']);
				$email  		= $conn->real_escape_string($_POST['email']);
				$no_hp   		= $conn->real_escape_string($_POST['no_hp']);
				$lagu   		= $conn->real_escape_string($_POST['lagu']);
				$pembayaran   	= $conn->real_escape_string($_POST['pembayaran']);

				$sql_cek = $conn->query("SELECT * FROM singcomp_parsial WHERE email='$email'");

				if ($sql_cek->num_rows <= 1) {

					if(!empty(trim($nama)) && !empty(trim($genre)) && !empty(trim($kampus_asal)) && !empty(trim($alamat)) && !empty(trim($official)) && !empty(trim($email)) && !empty(trim($no_hp)) && !empty(trim($lagu))){

						$update = $conn->query("UPDATE singcomp_parsial SET nama_team='$nama', kampus_asal='$kampus_asal', alamat='$alamat', genre='$genre', official='$official', email='$email', no_hp='$no_hp', lagu='$lagu', pembayaran='$pembayaran' WHERE id='$id' ");

						if($update){

							header('location : singcomp.php');
							echo '
								<div class="alert alert-success">
									Ubah data peserta berhasil.
								</div>';
						}else{
							echo '
								<div class="alert alert-danger">
									Ubah data peserta gagal.
								</div>';
						}
					}else{
							echo '
								<div class="alert alert-danger">
									Tidak boleh kosong.
								</div>';
					}
				}else{
							echo '
								<div class="alert alert-danger">
									Email sudah ada. Ganti dengan email yang lain.
								</div>';
				}

			}

?>

	
					<div class="row">

						<div class="form-group">
	
							<label class="control-label col-sm-offset-1 col-sm-2">Nama Team </label>
	
							<div class="col-sm-6">
	
								<input type="text" class="form-control" value="<?php echo $data['nama_team'];?>" name="nama-team" required/>
	
							</div>
	
						</div>

						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Genre </label>
		
							<div class="col-sm-3">
		
								<select class="form-control" name="genre" required>
									<option <?php if($data['genre'] == ''){ echo 'selected'; } ?>></option>
									<option <?php if($data['genre'] == 'Group Vocal'){ echo 'selected'; } ?>>Group Vocal</option>
									<option <?php if($data['genre'] == 'Solo Vocal'){ echo 'selected'; } ?>>Solo Vocal</option>
								</select>
		
							</div>
		
						</div>

						<div class="form-group">
	
							<label class="control-label col-sm-offset-1 col-sm-2">Asal Sekolah/Instansi </label>
	
							<div class="col-sm-6">
	
								<input type="text" class="form-control" value="<?php echo $data['kampus_asal'];?>" name="kampus-asal" required/>
	
							</div>
	
						</div>
						
						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Alamat </label>
	
							<div class="col-sm-6">
	
								<input type="text" class="form-control" value="<?php echo $data['alamat'];?>" name="alamat" required/>
	
							</div>
	
						</div>

						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Official </label>
	
							<div class="col-sm-6">
	
								<input type="text" class="form-control" value="<?php echo $data['official'];?>" name="nama-pj" required/>
	
							</div>
	
						</div>

						<div class="form-group">
	
							<label class="control-label col-sm-offset-1 col-sm-2">Email </label>
	
							<div class="col-sm-6">
	
								<input type="email" class="form-control" value="<?php echo $data['email'];?>" name="email" required />
	
							</div>
	
						</div>

						<div class="form-group">
	
							<label class="control-label col-sm-offset-1 col-sm-2">No. HP </label>
	
							<div class="col-sm-6">
	
								<input type="tel" class="form-control" value="<?php echo $data['no_hp'];?>" name="no_hp" required/>
	
							</div>
	
						</div>
	

						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Lagu </label>
	
							<div class="col-sm-6">
	
								<input type="text" class="form-control" value="<?php echo $data['lagu'];?>" name="lagu" required/>
	
							</div>
	
						</div>

						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Pembayaran </label>
	
							<div class="col-sm-3">
	
								<input type="text" class="form-control" value="<?php echo $data['pembayaran'];?>" name="pembayaran">
	
							</div>
	
						</div>

						<div class="form-actions">

							<div class="row">

								<div class="col-sm-offset-3 col-sm-3">
								
<?php
									echo '<input class="btn btn-submit btn-primary" type="submit" name="simpan" value="Simpan" onclick="return confirm(\'Apakah data anda sudah benar?\')" />';
?>

									<br>

								</div>

							</div>
							
						</div>

					</div>

				</form>


<?php
		}
	}
?>
<?php require_once "footer.php";?>