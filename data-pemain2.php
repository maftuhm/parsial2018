<?php 
require_once "functions/config.php";
require_once "functions/encryption.php";
$title = 'Futsal';
require_once "views/header.php";
require_once "views/variabel.php";
?>

		<div class="section">
        
        	<div class="container" >

<?php
    if(isset($_GET['id'])){

        $id_en = $_GET['id']; 
        $id = base64_decrypt($id_en,$key);

        $sql_pemain = $conn->query("SELECT * FROM futsal_parsial WHERE id='$id'");
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
    }
?>
<?php require_once "functions/script_futsal2.php";?>

				<form class="form-horizontal" id="submit_form" method="POST" enctype="multipart/form-data">
					
					<div class="row">
					
						<div class="col-sm-12">
					
							<h2>Formulir Pendaftaran Data Pemain (Optional)</h2>
					
						</div>

					</div>
				
					<?php echo $input_email;?>
					
					<div class="row" id="upload">
						
				<?php

				for($i=7; $i<12; $i=2+$i):
					$j=$i+1;
				?>

						<div class="form-group">

							<div class="col-md-6 aside-left">

								<div class="form-group">

									<label class="control-label col-md-offset-2 col-sm-offset-1 col-sm-3"><?php echo $i;?>. Nama </label>

									<div class="col-sm-6">

										<input type="text" class="form-control" name="nama-pemain-<?php echo $i;?>"  />

 									</div>

								</div>

								<div class="form-group">

									<label class="control-label  col-md-offset-2 col-sm-offset-1 col-sm-3">Foto </label>

									<div class="col-sm-7">

										<input type="file" name="foto-<?php echo $i;?>" />

 									</div>

								</div>

								<div class="form-group">

									<label class="control-label  col-md-offset-2 col-sm-offset-1 col-sm-3">Scan KTM </label>

									<div class="col-sm-7">

										<input type="file" name="ktm-<?php echo $i;?>" />

 									</div>

								</div>

							</div>

							<div class="col-md-6 aside-right">

								<div class="form-group">

									<label class="control-label col-sm-3"><?php echo $j;?>. Nama </label>

									<div class="col-sm-6">

										<input type="text" class="form-control" name="nama-pemain-<?php echo $j;?>" />

 									</div>

								</div>

								<div class="form-group">

									<label class="control-label col-sm-3">Foto </label>

									<div class="col-sm-7">

										<input type="file" name="foto-<?php echo $j;?>" />

 									</div>

								</div>

								<div class="form-group">

									<label class="control-label col-sm-3">Scan KTM </label>

									<div class="col-sm-7">

										<input type="file" name="ktm-<?php echo $j;?>" />

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
						<li>Download <i><?php $kode_sk = 1; require_once "functions/download.php";?></i> terlebih dahulu dan pahami dengan seksama.</li>
						<li>Formulir terdiri dari tiga halaman. Halaman pertama untuk pengisian data team, halaman kedua dan ketiga untuk pengisian data pemain (Halaman ketiga bersifat optional).</li>
						<li>Halaman berikutnya dapat diisi setelah mengisi halaman sebelumnya.</li>
						<li>Isi formulir dengan data yang sebenar-benarnya.</li>
						<li>Data pemain tidak akan terdaftar jika foto atau kartu identitas tidak diunggah (Halaman tiga).</li>
						<li>Maksimal ukuran foto adalah 2MB.</li>
						<li>Pengisian formulir berhasil jika ada pemberitahuan <b>Berhasil</b> diatas judul formulir. Jika tidak, harap klik <a href="contact-us.php">Contact Us</a> untuk penanganan lebih lanjut.</li>
						<li>Setelah semua data terisi, harap membayar ke rekening yang terdapat pada <i>Syarat dan Ketentuan</i>.</li>
						<li>Klik link <?php echo $url_pembayaran_futsal;?> untuk upload bukti pembayaran.</li>
						<li>Mengisi data pemain dapat dilakukan di lain waktu. Simpan link <a href="http://bit.ly/futsalhalaman2">bit.ly/futsalhalaman2</a> dan <a href="http://bit.ly/futsalhalaman3">bit.ly/futsalhalaman3</a> untuk mengisi data pemain nanti.</li>
						<li>Untuk informasi lebih lanjut dapat menghubungi panitia ke : <?php echo $cp_futsal;?>.</li>
					</ol>

			
				</div>
			
			</div>
		
		</div>

<?php require_once "views/footer.php";?>