<?php 
require_once "functions/config.php";
require_once "functions/encryption.php";
$title = 'Group Vocal';
require_once "views/header.php";
require_once "views/variabel.php";
?>

		<div class="section">
        
        	<div class="container" >

<?php
    if(isset($_GET['id'])){

        $id_en = $_GET['id'];
        $id = base64_decrypt($id_en,$key);
        
        $sql_pemain = $conn->query("SELECT * FROM singcomp_parsial WHERE id='$id'");
        $data_pemain = $sql_pemain->fetch_assoc();
        $email = $data_pemain['email'];
    }else{

    	$input_email = '
					<div class="row">

						<div class="form-group">

							<div class="col-md-6 aside-left">

								<div class="form-group">

									<label class="control-label col-md-offset-2 col-sm-offset-1 col-sm-3">&nbsp;&nbsp;&nbsp;Email <span class="required">* </span></label>

									<div class="col-sm-6">

										<input type="email" class="form-control" name="email" required/>

 									</div>

								</div>
								
							</div>
						
						</div>
					
					</div>

					';
		$email    = $conn->real_escape_string($_POST['email']);
		$sql_pemain = $conn->query("SELECT * FROM singcomp_parsial WHERE email='$email'");
        $data_pemain = $sql_pemain->fetch_assoc();
        $id=$data_pemain['id'];
    }

?>
<?php require_once "functions/script_singcomp.php";?>

				<form class="form-horizontal" id="submit_form" method="POST" enctype="multipart/form-data">
					
					<div class="row">
					
						<div class="col-sm-12">
					
							<h2>Pendaftaran Group Vocal</h2>
					
						</div>

					</div>
					<?php echo $input_email;?>
					
					<div class="row" id="upload">
				<?php

				for($i=1; $i<6; $i=2+$i):
					$j=$i+1;
				
				    if($i<2){
				    	$req = ' required ';
				    	$icon = '<span class="required">* </span>';
				    }else{
				    	$req = '';
				    	$icon = '';
				    }
				?>
						<div class="form-group">

							<div class="col-md-6 aside-left">

								<div class="form-group">

									<label class="control-label col-md-offset-2 col-sm-offset-1 col-sm-3"><?php echo $i;?>. Nama <?php echo $icon;?></label>

									<div class="col-sm-6">

										<input type="text" class="form-control" name="nama-peserta-<?php echo $i;?>" <?php echo $req;?>/>

 									</div>

								</div>
								<div class="form-group">

									<label class="control-label col-md-offset-2 col-sm-offset-1 col-sm-3">Posisi/Part <?php echo $icon;?></label>

									<div class="col-sm-6">

										<input type="text" class="form-control" name="posisi-<?php echo $i;?>" <?php echo $req;?>/>

 									</div>

								</div>

								<div class="form-group">

									<label class="control-label  col-md-offset-2 col-sm-offset-1 col-sm-3">Foto <?php echo $icon;?></label>

									<div class="col-sm-7">

										<input type="file" name="foto-<?php echo $i;?>" <?php echo $req;?>/>

 									</div>

								</div>

								<div class="form-group">

									<label class="control-label  col-md-offset-2 col-sm-offset-1 col-sm-3">Kartu Identitas <?php echo $icon;?></label>

									<div class="col-sm-7">

										<input type="file" name="ktm-<?php echo $i;?>" <?php echo $req;?>/>

 									</div>
								</div>

							</div>

							<div class="col-md-6 aside-right">

								<div class="form-group">

									<label class="control-label col-sm-3"><?php echo $j;?>. Nama <?php echo $icon.$icon;?></label>

									<div class="col-sm-6">

										<input type="text" class="form-control" name="nama-peserta-<?php echo $j;?>" <?php echo $req;?>/>

 									</div>

								</div>

								<div class="form-group">

									<label class="control-label col-sm-3">Posisi/Part <?php echo $icon.$icon;?></label>

									<div class="col-sm-6">

										<input type="text" class="form-control" name="posisi-<?php echo $j;?>" <?php echo $req;?>/>

 									</div>

								</div>

								<div class="form-group">

									<label class="control-label col-sm-3">Foto <?php echo $icon.$icon;?></label>

									<div class="col-sm-7">

										<input type="file" name="foto-<?php echo $j;?>" <?php echo $req;?>/>

 									</div>

								</div>

								<div class="form-group">

									<label class="control-label col-sm-3">Kartu Identitas <?php echo $icon.$icon;?></label>

									<div class="col-sm-7">

										<input type="file" name="ktm-<?php echo $j;?>" <?php echo $req;?>/>

 									</div>
								</div>
							</div>

						</div>
				<?php

				endfor;

				?>

                        <div class="form-actions">

                            <div class="row">

                                <div class="col-sm-offset-1 col-sm-3">

                                    <?php echo $tombol_daftar;?>


                                    <br>

                                </div>

                            </div>
                              
                        </div>

					</div>

				</form>

			</div>

		</div>

		<div class="section">

    		<div class="container">

				<div id="rules">

					<h4>Prosedur Pengisian Formulir</h4>

					<ol>
						<li>Download <i><?php $kode_sk = 4; require_once "functions/download.php";?></i> terlebih dahulu dan pahami dengan seksama.</li>
						<li>Formulir terdiri dari 2 halaman. Halaman pertama untuk pengisian data team, halaman kedua untuk pengisian data peserta.</li>
						<li>Halaman kedua dapat diisi setelah mengisi halaman pertama.</li>
						<li>Isi formulir diatas dengan data yang sebenar-benarnya.</li>
						<li>Data pemain tidak akan terdaftar jika foto atau kartu identitas tidak diunggah (Halaman kedua).</li>
						<li>Maksimal ukuran foto adalah 2MB.</li>
						<li>Pengisian formulir berhasil jika ada pemberitahuan <b>Berhasil</b> diatas judul formulir. Jika tidak, harap klik <a href="contact-us.php">Contact Us</a> untuk penanganan lebih lanjut.</li>
						<li>Setelah isi formulir, harap membayar ke rekening yang terdapat pada <i>Syarat dan Ketentuan</i>.</li>
						<li>Klik link <?php echo $url_pembayaran_singcomp;?> untuk upload bukti pembayaran.</li>
						<li>Mengisi data pemain bisa dilakukan di lain waktu. Simpan link <a href="http://bit.ly/SoloVocal">bit.ly/SoloVocal</a> dan <a href="http://bit.ly/GroupVocal">bit.ly/GroupVocal</a> untuk mengisi data pemain nanti.</li>
						<li>Untuk informasi lebih lanjut dapat menghubungi panitia ke <?php echo $cp_singcomp;?>.</li>
					</ol>

				</div>

			</div>

		</div>


<?php require_once "views/footer.php";?>