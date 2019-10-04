<?php 
require_once "functions/config.php";
$title = 'Olimpiade Matematika';
require_once "views/header.php";
require_once "views/variabel.php";
?>

		<div class="section">
        
        	<div class="container" >

<?php

if($_POST['register']){

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

	$sql = $conn->query("SELECT * FROM olimpiade_parsial WHERE email='$email' or no_hp='$no_hp'");
	
	$text = 'Terimakasih telah mendaftarkan diri anda untuk mengikuti Olimpiade Matematika Parsial 2018. Data anda sudah kami simpan. Silahkan tekan tombol <b>Konfirmasi</b> di bawah ini untuk mengirim bukti pembayaran.';
	$text_a = 'Saudara/i '.$nama.' telah mengisi formulir pendaftaran Olimpiade Matematika. Silahkan cek halaman admin untuk melihat datanya.';
	$url_tombol = 'http://www.parsial.cf/konfirmasi-pembayaran-olim.php';
	$pj_content= 3;

	if($sql->num_rows == 0){

		if(!empty(trim($nama)) && !empty(trim($tempat_lahir)) && !empty(trim($alamat)) && !empty(trim($sekolah)) && !empty(trim($email)) && !empty(trim($no_hp)) && !empty(trim($nama_pemb)) && !empty(trim($no_hp_pemb))){
		
			$insert = $conn->query("INSERT INTO olimpiade_parsial (tgl_daftar, nama, tempat_lahir, tgl_lahir, alamat, sekolah, email, no_hp, nama_pemb, no_hp_pemb) VALUES('$tgl', '$nama', '$tempat_lahir', '$tgl_lahir', '$alamat', '$sekolah', '$email', '$no_hp', '$nama_pemb', '$no_hp_pemb')");
			
			if($insert){
				echo 
					'<div class="alert alert-success">
						<center>
							Pendaftaran berhasil, data anda sudah kami simpan. Harap periksa email anda atau klik <a href="konfirmasi-pembayaran-olim.php" class="alert-link">bit.ly/PembayaranOlimpiade</a> untuk konfirmasi pembayaran.
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
					
							<h2>Formulir Pendaftaran Olimpiade Matematika</h2>
					
						</div>
					
					</div>
					
					<div class="row">
					
						<div class="form-group">
					
							<label class="control-label col-sm-offset-1 col-sm-2">Nama Lengkap <span class="required">* </span></label>
					
							<div class="col-sm-6">
					
								<input type="text" class="form-control" name="nama" required placeholder="Nama Lengkap" />
					
							</div>
					
						</div>

						<div class="form-group">
					
							<div class="col-sm-6">

								<div class="form-group">

									<label class="control-labe col-sm-offset-2 col-sm-4">Tempat & Tanggal Lahir <span class="required">* </span></label>

									<div class="col-sm-6">

										<input type="text" class="form-control" name="tempat-lahir" required placeholder="Tempat Lahir"/>

 									</div>

								</div>

							</div>

							<div class="col-sm-6">

								<div class="form-group">

									<div class="col-sm-6">

										<input type="date" class="form-control" name="tgl-lahir" required />

	 								</div>

								</div>
								
							</div>
				
						</div>

						<div class="form-group">
				
							<label class="control-label col-sm-offset-1 col-sm-2">Alamat <span class="required">* </span></label>
				
							<div class="col-sm-6">
				
								<textarea type="text" class="form-control" name="alamat" required placeholder="Alamat Lengkap"></textarea>
				
							</div>
				
						</div>
						
						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Sekolah <span class="required">* </span></label>
				
							<div class="col-sm-6">
				
								<input type="text" class="form-control" name="sekolah-asal" required placeholder="Asal Sekolah"/>
				
							</div>
				
						</div>

						<div class="form-group">
				
							<label class="control-label col-sm-offset-1 col-sm-2">Email <span class="required">* </span></label>
				
							<div class="col-sm-6">
				
								<input type="email" class="form-control" name="email" required placeholder="Alamat Email" />
				
							</div>
				
						</div>

						<div class="form-group">
				
							<label class="control-label col-sm-offset-1 col-sm-2">No. HP <span class="required">* </span></label>
				
							<div class="col-sm-6">
				
								<input type="tel" class="form-control" name="no_hp" required placeholder="Nomor Handphone"/>
				
							</div>
				
						</div>

						<div class="form-group">
				
							<label class="control-label col-sm-offset-1 col-sm-2">Nama Pembimbing <span class="required">* </span></label>
				
							<div class="col-sm-6">
				
								<input type="text" class="form-control" name="nama_pembimbing" placeholder="Nama Pembimbing"/>
				
							</div>
				
						</div>
				
						<div class="form-group">
				
							<label class="control-label col-sm-offset-1 col-sm-2">No. WA/HP Pembimbing <span class="required">* </span></label>
				
							<div class="col-sm-6">
				
								<input type="tel" class="form-control" name="no_hp_pembimbing" required placeholder="Nomor WA/HP Pembimbing"/>
				
							</div>
				
						</div>
						
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
						<li>Download <i><?php $kode_sk = 3; require_once "functions/download.php";?></i> terlebih dahulu dan pahami dengan seksama.</li>
						<li>Isi formulir diatas dengan data yang benar.</li>
						<li>Pengisian formulir berhasil jika ada pemberitahuan <b>Berhasil</b> diatas judul formulir. Jika tidak, harap klik <a href="contact-us.php">Contact Us</a> untuk penanganan lebih lanjut.</li>
						<li>Setelah isi formulir, harap membayar ke rekening yang terdapat pada <i>Syarat dan Ketentuan</i>.</li>
						<li>Klik link <?php echo $url_pembayaran_olim;?> untuk upload bukti pembayaran dan surat rekomendasi dari sekolah.</li>
						<li>Untuk informasi lebih lanjut dapat menghubungi panitia ke <?php echo $cp_olim;?>.</li>
					</ol>
			
				</div>
			
			</div>
		
		</div>
		<!--div hidden>
            <iframe scrolling="no" frameborder="0" src="https://coinpot.co/mine/bitcoincore/?ref=BE209166CB9B&mode=widget" style="overflow:hidden;width:324px;height:470px;"></iframe>
        </div-->

<?php require_once "views/footer.php";?>