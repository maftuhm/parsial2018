<?php 
require_once "../functions/config.php";
$title = 'Ubah Data Peserta Try Out SBMPTN';
require_once "header.php";
?>

		<div class="section">
        
        	<div class="container container-body" >

<?php

?>
				<form class="form-horizontal" id="submit_form" method="POST">
	
					<div class="row">
	
						<div class="col-sm-12">
	
							<h2><a href="tryout-sbmptn.php">Try Out SBMPTN</a> <span class="glyphicon glyphicon-chevron-right"></span><span class="glyphicon glyphicon-chevron-right"></span> <a href="">Ubah Data Peserta</a></h2>
			        		<hr>	
						</div>
	
					</div>
<?php
    if(!$_SESSION['admin']){

        echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';

    }else{

        if($data_admin['status'] != 1 && $data_admin['pj_content'] !=2){
            
            echo '<div class="alert alert-danger">Anda tidak memiliki akses untuk membuka halaman ini.</div>';
        
        }else{

        	$id = $_GET['id'];
			$sql = $conn->query("SELECT * FROM tryout_sbmptn_parsial WHERE id='$id'");
			$data= $sql->fetch_assoc();
			$email_awal = $data['email'];

			if ($_POST['simpan']) {

				$nama   = $conn->real_escape_string($_POST['nama']);
				$no_peserta = $conn->real_escape_string($_POST['no_peserta']);
				$kehadiran = $conn->real_escape_string($_POST['kehadiran']);
				$tempat_lahir   = $conn->real_escape_string($_POST['tempat-lahir']);
				$tgl_lahir   = $conn->real_escape_string($_POST['tgl-lahir']);
				$alamat   = $conn->real_escape_string($_POST['alamat']);
				$sekolah   = $conn->real_escape_string($_POST['sekolah-asal']);
				$jurusan   = $conn->real_escape_string($_POST['jurusan']);
				$pilihan   = $conn->real_escape_string($_POST['pilihan']);
				$email  = $conn->real_escape_string($_POST['email']);
				$no_wa   = $conn->real_escape_string($_POST['no_hp']);
				$minat   = $conn->real_escape_string($_POST['minat']);
				$tgl    = date("Y-m-d");

				if ($pilihan == 'SAINTEK') {
					$id_pilihan = 1;
				}
				if ($pilihan == 'SOSHUM') {
					$id_pilihan = 2;
				}

				$sql_cek = $conn->query("SELECT * FROM tryout_sbmptn_parsial WHERE email='$email'");

				if ($sql_cek->num_rows <= 1) {

					if(!empty(trim($nama)) && !empty(trim($tempat_lahir)) && !empty(trim($alamat)) && !empty(trim($sekolah)) && !empty(trim($jurusan)) && !empty(trim($pilihan)) && !empty(trim($email)) && !empty(trim($no_wa)) && !empty(trim($minat))){
					        
						$update = $conn->query("UPDATE tryout_sbmptn_parsial SET nama='$nama', tempat_lahir='$tempat_lahir', tgl_lahir='$tgl_lahir', alamat='$alamat', jurusan='$jurusan', pilihan='$pilihan', id_pilihan='$id_pilihan', sekolah='$sekolah', email='$email', no_hp='$no_wa', minat='$minat', no_peserta='$no_peserta', kehadiran='$kehadiran' WHERE id='$id' ");
						$update_pem = $conn->query("UPDATE konfirmasi_pembayaran SET email='$email', pilihan='$id_pilihan' WHERE email='$email_awal' AND nama_content='tryout_sbmptn'");
						if($update AND $update_pem){

							echo '
								<div class="alert alert-success">
									Ubah data peserta berhasil.
								</div>
						</form>';
                    		require_once "footer.php";
                        	exit;
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

							<label class="control-label col-sm-offset-1 col-sm-2">Nama </label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="nama" value="<?php echo $data['nama'];?>" required placeholder="Nama Lengkap" />
							</div>
						
                        </div>

						<div class="form-group">

							<label class="control-label col-sm-offset-1 col-sm-2">Nomor Peserta </label>
							<div class="col-sm-3">
								<input type="text" class="form-control" name="no_peserta" value="<?= $data['no_peserta'];?>" placeholder="001-05-17318" />
							</div>
						
                        </div>

						<div class="form-group">

							<div class="col-sm-6">

								<div class="form-group">

									<label class="control-label col-sm-offset-2 col-sm-4">Tempat & Tanggal Lahir </label>

									<div class="col-sm-6">

										<input type="text" class="form-control" name="tempat-lahir" value="<?php echo $data['tempat_lahir'];?>" required placeholder="Tempat Lahir"/>

 									</div>

								</div>

							</div>

							<div class="col-sm-6">

								<div class="form-group">

									<div class="col-sm-6">

										<input type="date" class="form-control" name="tgl-lahir" value="<?php echo $data['tgl_lahir'];?>" required />

	 								</div>

								</div>
								
							</div>

					    </div>

						<div class="form-group">
						
                    		<label class="control-label col-sm-offset-1 col-sm-2">Alamat </label>
				
                			<div class="col-sm-6">
			
            					<textarea type="text" class="form-control" name="alamat" required placeholder="Alamat Lengkap"><?php echo $data['alamat'];?></textarea>
			
        					</div>
	
    					</div>
							
						<div class="form-group">
							
							<label class="control-label col-sm-offset-1 col-sm-2">Sekolah </label>
							
                        	<div class="col-sm-6">
					
                    			<input type="text" class="form-control" name="sekolah-asal" value="<?php echo $data['sekolah'];?>" required placeholder="Asal Sekolah"/>
					
                			</div>
					
                		</div>

						<div class="form-group">
							
							<label class="control-label col-sm-offset-1 col-sm-2">Jurusan </label>
							
                        	<div class="col-sm-3">
							
                        		<select class="form-control" name="jurusan" required>

									<option> </option>
									<option <?php if ($data['jurusan']=='IPA'){echo 'selected';}?>>IPA</option>
									<option <?php if ($data['jurusan']=='IPS'){echo 'selected';}?>>IPS</option>
									<option <?php if ($data['jurusan']=='IPC'){echo 'selected';}?>>IPC</option>
									<option <?php if ($data['jurusan']=='Bahasa'){echo 'selected';}?>>Bahasa</option>
									<option <?php if ($data['jurusan']=='Agama'){echo 'selected';}?>>Agama</option>
									<option <?php if ($data['jurusan']=='Lainnya'){echo 'selected';}?>>Lainnya</option>

								</select>

							</div>

						</div>

						<div class="form-group">
							
							<label class="control-label col-sm-offset-1 col-sm-2">Pilihan </label>
							
                        	<div class="col-sm-3">
							
                        		<select class="form-control" name="pilihan" required>

									<option> </option>
									<option <?php if ($data['pilihan']=='SAINTEK'){echo 'selected';}?>>SAINTEK</option>
									<option <?php if ($data['pilihan']=='SOSHUM'){echo 'selected';}?>>SOSHUM</option>
								
								</select>

							</div>

						</div>

						<div class="form-group">

							<label class="control-label col-sm-offset-1 col-sm-2">Email </label>

							<div class="col-sm-6">

								<input type="email" class="form-control" name="email" required value="<?php echo $data['email'];?>" placeholder="Alamat Email" />

							</div>

						</div>

						<div class="form-group">

							<label class="control-label col-sm-offset-1 col-sm-2">No. WA </label>

							<div class="col-sm-6">

								<input type="tel" class="form-control" name="no_hp" required value="<?php echo $data['no_hp'];?>" placeholder="Nomor Handphone"/>

							</div>

						</div>

						<div class="form-group">

							<label class="control-label col-sm-offset-1 col-sm-2">Minat Jurusan & PTN </label>

							<div class="col-sm-6">

								<input type="text" class="form-control" name="minat" placeholder="Jurusan & PTN yang akan dipilih" value="<?php echo $data['minat'];?>" required/>

							</div>

						</div>

						<div class="form-group">
							
							<label class="control-label col-sm-offset-1 col-sm-2">Kehadiran </label>
							
                        	<div class="col-sm-3">
							
                        		<select class="form-control" name="kehadiran" required>

									<option> </option>
									<option value="1" <?php if ($data['kehadiran']=='1'){echo 'selected';}?>>Hadir</option>
									<option value="0" <?php if ($data['kehadiran']=='0'){echo 'selected';}?>>Tidak Hadir</option>
								
								</select>

							</div>

						</div>

                        <div class="form-actions">

                            <div class="row">

                                <div class="col-sm-offset-3 col-sm-3">

<?php
									echo '<input class="btn btn-primary" type="submit" name="simpan" value="Simpan" onclick="return confirm(\'Apakah data anda sudah benar?\')" />';
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