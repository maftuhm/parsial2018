<?php 
require_once "../functions/config.php";
$title = 'Ubah Data Peserta Olimpiade';
require_once "header.php";
?>

		<div class="section">
        
        	<div class="container container-body" >

<?php

?>
				<form class="form-horizontal" id="submit_form" method="POST">
	
					<div class="row">
	
						<div class="col-sm-12">
	
							<h2><a href="olim.php">Olimpiade</a> <span class="glyphicon glyphicon-chevron-right"></span><span class="glyphicon glyphicon-chevron-right"></span> <a href="">Ubah Data Peserta</a></h2>
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
			$sql = $conn->query("SELECT * FROM olimpiade_parsial WHERE id='$id'");
			$data= $sql->fetch_assoc();

			if ($_POST['simpan']) {

				$nama   = $conn->real_escape_string($_POST['nama']);
				$tempat_lahir   = $conn->real_escape_string($_POST['tempat-lahir']);
				$tgl_lahir   = $conn->real_escape_string($_POST['tgl-lahir']);
				$alamat   = $conn->real_escape_string($_POST['alamat']);
				$sekolah   = $conn->real_escape_string($_POST['sekolah-asal']);
				$email  = $conn->real_escape_string($_POST['email']);
				$no_hp   = $conn->real_escape_string($_POST['no_hp']);
				$nama_pemb   = $conn->real_escape_string($_POST['nama_pembimbing']);
				$no_hp_pemb   = $conn->real_escape_string($_POST['no_hp_pembimbing']);
				$tgl    = date("Y-m-d");

				$sql_cek = $conn->query("SELECT * FROM olimpiade_parsial WHERE email='$email'");

				if ($sql_cek->num_rows <= 1) {

					if(!empty(trim($nama)) && !empty(trim($tempat_lahir)) && !empty(trim($tgl_lahir)) && !empty(trim($alamat)) && !empty(trim($sekolah)) && !empty(trim($nama_pemb)) && !empty(trim($no_hp_pemb)) && !empty(trim($email)) && !empty(trim($no_hp))){
					        
						$update = $conn->query("UPDATE olimpiade_parsial SET nama='$nama', tempat_lahir='$tempat_lahir', tgl_lahir='$tgl_lahir', alamat='$alamat', sekolah='$sekolah', email='$email', no_hp='$no_hp', nama_pemb='$nama_pemb', no_hp_pemb='$no_hp_pemb' WHERE id='$id' ");

						if($update){

							header('location : olim.php');
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

							<label class="control-label col-sm-offset-1 col-sm-2">Nama </label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="nama" value="<?php echo $data['nama'];?>" required placeholder="Nama Lengkap" />
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
				
							<label class="control-label col-sm-offset-1 col-sm-2">Nama Pembimbing <span class="required">* </span></label>
				
							<div class="col-sm-6">
				
								<input type="text" class="form-control" name="nama_pembimbing" value="<?php echo $data['nama_pemb'];?>" placeholder="Nama Pembimbing"/>
				
							</div>
				
						</div>
				
						<div class="form-group">
				
							<label class="control-label col-sm-offset-1 col-sm-2">No. WA/HP Pembimbing <span class="required">* </span></label>
				
							<div class="col-sm-6">
				
								<input type="tel" class="form-control" name="no_hp_pembimbing" required value="<?php echo $data['no_hp_pemb'];?>" placeholder="Nomor WA/HP Pembimbing"/>
				
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