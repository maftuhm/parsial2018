<?php 
require_once "../functions/config.php";
$title = 'Ubah Data Team Futsal';
require_once "header.php";
?>

		<div class="section">
        
        	<div class="container container-body" >

<?php

?>
				<form class="form-horizontal" id="submit_form" method="POST">
	
					<div class="row">
	
						<div class="col-sm-12">
	
							<h2><a href="futsal.php">Futsal</a> <span class="glyphicon glyphicon-chevron-right"></span><span class="glyphicon glyphicon-chevron-right"></span> <a href="">Ubah Data Team</a></h2>
			        		<hr>	
						</div>
	
					</div>
<?php
    if(!$_SESSION['admin']){

        echo '<div class="alert alert-danger"><center>Anda harus login untuk membuka halaman ini.</center></div>';

    }else{

        if($data_admin['status'] != 1 && $data_admin['pj_content']!=1.1 && $data_admin['pj_content']!=1.2){
            
            echo '<div class="alert alert-danger"><center>Anda tidak memiliki akses untuk membuka halaman ini.</center></div>';
        
        }else{

        	$id = $_GET['id'];
			$sql = $conn->query("SELECT * FROM futsal_parsial WHERE id='$id'");
			$data= $sql->fetch_assoc();

			if ($_POST['simpan']) {

				$nama   = $conn->real_escape_string($_POST['nama-team']);
				$univ   = $conn->real_escape_string($_POST['kampus-asal']);
				$fakultas = $conn->real_escape_string($_POST['fakultas']);
				$jurusan  = $conn->real_escape_string($_POST['jurusan']);
				$official = $conn->real_escape_string($_POST['nama-pj']);
				$email    = $conn->real_escape_string($_POST['email']);
				$no_hp    = $conn->real_escape_string($_POST['no_hp']);
				$kategori = $conn->real_escape_string($_POST['kategori']);
				$pembayaran = $conn->real_escape_string($_POST['pembayaran']);

				$sql_cek = $conn->query("SELECT * FROM futsal_parsial WHERE email='$email'");

				if ($sql_cek->num_rows <= 1) {

					if(!empty(trim($nama)) && !empty(trim($univ)) && !empty(trim($fakultas)) && !empty(trim($jurusan)) && !empty(trim($official)) && !empty(trim($email)) && !empty(trim($no_hp)) && !empty(trim($kategori))){

						$update = $conn->query("UPDATE futsal_parsial SET nama_team='$nama', universitas='$univ', fakultas='$fakultas', jurusan='$jurusan', official='$official', email='$email', no_hp='$no_hp', kategori='$kategori', pembayaran='$pembayaran' WHERE id='$id' ");

						if($update){

							header('location : futsal.php');
							echo '
								<div class="alert alert-success">
									Ubah data team futsal berhasil.
								</div>';
						}else{
							echo '
								<div class="alert alert-danger">
									Ubah data team futsal gagal.
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
	
							<label class="control-label col-sm-offset-1 col-sm-2">Universitas </label>
	
							<div class="col-sm-6">
	
								<input type="text" class="form-control" value="<?php echo $data['universitas'];?>" name="kampus-asal" required/>
	
							</div>
	
						</div>
						
						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Fakultas </label>
	
							<div class="col-sm-6">
	
								<input type="text" class="form-control" value="<?php echo $data['fakultas'];?>" name="fakultas" required/>
	
							</div>
	
						</div>

						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Jurusan </label>
	
							<div class="col-sm-6">
	
								<input type="text" class="form-control" value="<?php echo $data['jurusan'];?>" name="jurusan" required/>
	
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
						
							<label class="control-label col-sm-offset-1 col-sm-2">Kategori </label>
	
							<div class="col-sm-3">
	
								<select class="form-control" name="kategori" required>
									<option <?php if($data['kategori'] == '0'){ echo 'selected'; } ?>> </option>
									<option <?php if($data['kategori'] == 'IKAHIMATIKA'){ echo 'selected'; } ?>>IKAHIMATIKA</option>
									<option <?php if($data['kategori'] == 'Mahasiswa Umum'){ echo 'selected'; } ?>>Mahasiswa Umum</option>
								</select>
	
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