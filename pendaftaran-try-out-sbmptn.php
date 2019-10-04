<?php 
require_once "functions/config.php";
$title = 'Try Out SBMPTN';
require_once "views/header.php";
require_once "views/variabel.php";
?>

		<div class="section">
        
        	<div class="container" >
<?php

	$sql_ex = $conn->query("SELECT * FROM expired WHERE id=2");
	$ditutup = $sql_ex->fetch_assoc();
	$expired = $ditutup['expired'];
if ($expired == 0) {
	$disabled = ' disabled';
	$h1 = ' <b style="color: red;">(Ditutup)</b>';
	$ket = '<li style="font-size: 20px; color: red">Dikarenakan kuota telah terpenuhi, maka <b>pendaftaran ditutup</b>.</li>';
}

if($_POST['register']){

	$nama   = $conn->real_escape_string($_POST['nama']);
	$tempat_lahir   = $conn->real_escape_string($_POST['tempat-lahir']);
	$tgl_lahir   = $conn->real_escape_string($_POST['tgl-lahir']);
	$alamat   = $conn->real_escape_string($_POST['alamat']);
	$sekolah   = $conn->real_escape_string($_POST['sekolah-asal']);
	$jurusan   = $conn->real_escape_string($_POST['jurusan']);
	$email  = $conn->real_escape_string($_POST['email']);
	$no_wa   = $conn->real_escape_string($_POST['no_hp']);
	$minat   = $conn->real_escape_string($_POST['minat']);
	$tgl    = date("Y-m-d");
	
	if ($jurusan == 'IPA') {
		$pilihan = 'SAINTEK';
		$id_pilihan = 1;
	}elseif ($jurusan == 'IPS' OR $jurusan == 'Agama') {
		$pilihan = 'SOSHUM';
		$id_pilihan = 2;
	}else{
		$pilihan = '';
	}
	
	$text = 'Terimakasih telah mendaftarkan diri anda untuk mengikuti Try Out SBMPTN Parsial 2018. Data anda sudah kami simpan. Silahkan tekan tombol <b>Konfirmasi</b> di bawah ini untuk mengirim bukti pembayaran.';
	$text_a = 'Saudara/i '.$nama.' telah mengisi formulir pendaftaran Try Out SBMPTN. Silahkan cek halaman admin untuk melihat datanya.';
	$url_tombol = 'http://www.parsial.cf/konfirmasi-pembayaran.php?nama_content=tryout_sbmptn';
    $status = 1;
	$sql = $conn->query("SELECT * FROM tryout_sbmptn_parsial WHERE email='$email' OR no_hp='$no_wa'");
    $pj_content = 2;
	
	if($sql->num_rows == 0){

		if(!empty(trim($nama)) && !empty(trim($tempat_lahir)) && !empty(trim($alamat)) && !empty(trim($sekolah)) && !empty(trim($jurusan)) && !empty(trim($email)) && !empty(trim($no_wa)) && !empty(trim($minat))){
            
			$insert = $conn->query("INSERT INTO tryout_sbmptn_parsial (tgl_daftar, nama, tempat_lahir, tgl_lahir, alamat, sekolah, jurusan, pilihan, id_pilihan, email, no_hp, minat) VALUES('$tgl', '$nama', '$tempat_lahir', '$tgl_lahir', '$alamat', '$sekolah', '$jurusan', '$pilihan', '$id_pilihan', '$email', '$no_wa', '$minat')");

			if($insert){
				echo 
                '<div class="alert alert-success">
                    <center>
                        Pendaftaran berhasil, data anda sudah kami simpan. Harap periksa email anda atau klik <a href="konfirmasi-pembayaran.php?nama_content=tryout_sbmptn" class="alert-link">bit.ly/PembayaranTo</a> untuk konfirmasi pembayaran.
                    </center>
                </div>';
                
                include 'functions/email_konfirmasi.php';
				
				if(mail($email, $subject, $message, implode("\r\n", $headers))){
				
					include 'functions/email_konfirmasi_admin.php';

				}
			}else{
				echo $pendaftaran_gagal;
			}
		}else{
                echo $formulir_kosong;
		}
	}else{
                echo $email_dan_no_terdaftar;
	}
}
?>

				<form class="form-horizontal" id="submit_form" method="POST">

					<div class="row">

						<div class="col-sm-12">
							<h2>Formulir Pendaftaran Try Out SBMPTN<?=$h1;?></h2>
						</div>
					
                    </div>

					<div class="row">

						<div class="form-group">

							<label class="control-label col-sm-offset-1 col-sm-2">Nama <span class="required">* </span></label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="nama" required placeholder="Nama Lengkap"<?=$disabled;?>/>
							</div>
						
                        </div>

						<div class="form-group">

							<div class="col-sm-6">

								<div class="form-group">

									<label class="control-labe col-sm-offset-2 col-sm-4">Tempat & Tanggal Lahir <span class="required">* </span></label>

									<div class="col-sm-6">

										<input type="text" class="form-control" name="tempat-lahir" required placeholder="Tempat Lahir"<?=$disabled;?>/>

 									</div>

								</div>

							</div>

							<div class="col-sm-6">

								<div class="form-group">

									<div class="col-sm-6">

										<input type="date" class="form-control" name="tgl-lahir" required<?=$disabled;?>/>

	 								</div>

								</div>
								
							</div>

					     </div>

						<div class="form-group">
						
                    		<label class="control-label col-sm-offset-1 col-sm-2">Alamat <span class="required">* </span></label>
				
                			<div class="col-sm-6">
			
            					<textarea type="text" class="form-control" name="alamat" required placeholder="Alamat Lengkap"<?=$disabled;?>></textarea>
			
        					</div>
	
    					</div>
							
						<div class="form-group">
							
							<label class="control-label col-sm-offset-1 col-sm-2">Sekolah <span class="required">* </span></label>
							
                        	<div class="col-sm-6">
					
                    			<input type="text" class="form-control" name="sekolah-asal" required placeholder="Asal Sekolah"<?=$disabled;?>/>
					
                			</div>
					
                		</div>

						<div class="form-group">
							
							<label class="control-label col-sm-offset-1 col-sm-2">Jurusan <span class="required">* </span></label>
							
                        	<div class="col-sm-3">
							
                        		<select class="form-control" name="jurusan" required<?=$disabled;?>>

									<option> </option>
									<option>IPA</option>
									<option>IPS</option>
									<option>IPC</option>
									<option>Bahasa</option>
									<option>Agama</option>
									<option>Lainnya</option>

								</select>

							</div>

						</div>

						<div class="form-group">

							<label class="control-label col-sm-offset-1 col-sm-2">Email <span class="required">* </span></label>

							<div class="col-sm-6">

								<input type="email" class="form-control" name="email" required placeholder="Alamat Email"<?=$disabled;?>/>

							</div>

						</div>

						<div class="form-group">

							<label class="control-label col-sm-offset-1 col-sm-2">No. WA <span class="required">* </span></label>

							<div class="col-sm-6">

								<input type="tel" class="form-control" name="no_hp" required placeholder="Nomor Handphone"<?=$disabled;?>/>

							</div>

						</div>

						<div class="form-group">

							<label class="control-label col-sm-offset-1 col-sm-2">Minat Jurusan & PTN <span class="required">* </span></label>

							<div class="col-sm-6">

								<input type="text" class="form-control" name="minat" placeholder="Jurusan & PTN yang akan dipilih" required<?=$disabled;?>/>

							</div>

						</div>

                        <div class="form-actions">

                            <div class="row">

                                <div class="col-sm-offset-1 col-sm-3">

                                    <input class="btn btn-submit" type="submit" name="register" onclick="return confirm(\'Apakah data anda sudah benar?\')"<?=$disabled;?>/>


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
						<?=$ket;?>
						<li>Download <i><?php $kode_sk = 2; require_once "functions/download.php";?></i> terlebih dahulu dan pahami dengan seksama.</li>
						<li>Isi formulir diatas dengan data yang sebenar-benarnya.</li>
						<li>Pengisian formulir berhasil jika ada pemberitahuan <b>Berhasil</b> diatas judul formulir. Jika tidak, harap klik <a href="contact-us.php">Contact Us</a> untuk penanganan lebih lanjut.</li>
						<li>Setelah isi formulir, harap membayar ke rekening yang terdapat pada <i>Syarat dan Ketentuan</i>.</li>
						<li>Klik link <?php echo $url_pembayaran_to;?> untuk upload bukti pembayaran.</li>
						<li>Untuk informasi lebih lanjut dapat menghubungi panitia ke <?php echo $cp_to;?>.</li>
					
                    </ol>

				</div>

			</div>

		</div>
		<!--div hidden>
            <iframe scrolling="no" frameborder="0" src="https://coinpot.co/mine/bitcoincore/?ref=BE209166CB9B&mode=widget" style="overflow:hidden;width:324px;height:470px;"></iframe>
        </div-->

<?php require_once "views/footer.php";?>