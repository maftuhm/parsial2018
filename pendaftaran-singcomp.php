 <?php 
require_once "functions/config.php";
require_once "functions/encryption.php";
$title = 'Sing Competition';
require_once "views/header.php";
require_once "views/variabel.php";
?>
		<div class="section">
        
        	<div class="container" >

<?php

if($_POST['register']){


	$nama   		= $conn->real_escape_string($_POST['nama-team']);
	$genre   		= $conn->real_escape_string($_POST['genre']);
	$kampus_asal	= $conn->real_escape_string($_POST['kampus-asal']);
	$alamat 		= $conn->real_escape_string($_POST['alamat']);
	$official 		= $conn->real_escape_string($_POST['nama-pj']);
	$email  		= $conn->real_escape_string($_POST['email']);
	$no_hp   		= $conn->real_escape_string($_POST['no_hp']);
	$lagu   		= $conn->real_escape_string($_POST['lagu']);
	$tgl    		= date("Y-m-d");


	$sql = $conn->query("SELECT * FROM singcomp_parsial WHERE email='$email' or no_hp='$no_hp'");

	if($sql->num_rows == 0){

		if(!empty(trim($nama)) && !empty(trim($genre)) && !empty(trim($kampus_asal)) && !empty(trim($alamat)) && !empty(trim($official)) && !empty(trim($email)) && !empty(trim($no_hp)) && !empty(trim($lagu))){

			$insert = $conn->query("INSERT INTO singcomp_parsial (tgl_daftar, nama_team, genre, kampus_asal, alamat, official, email, no_hp, lagu) VALUES('$tgl', '$nama', '$genre', '$kampus_asal', '$alamat', '$official', '$email', '$no_hp', '$lagu')");

			if($insert){

				$sql1 = $conn->query("SELECT * FROM singcomp_parsial WHERE email='$email'");
				$data1= $sql1->fetch_assoc();
				$id=$data1['id'];
				$id_en = base64_encrypt($id,$key);

				echo
				'<div class="alert alert-success">
					<center>
						Pendaftaran berhasil, tekan tombol <b>Lanjutkan</b> di bawah untuk mengisi data peserta.
					</center>
				</div>';

				if($genre == 'Group Vocal'){

					$url = 'data-peserta-group.php';
		
				}elseif ($genre == 'Solo Vocal') {
		
					$url = 'data-peserta-solo.php';
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

				<form class="form-horizontal" id="submit_form" method="POST" enctype="multipart/form-data">
					
					<div class="row">
					
						<div class="col-sm-12">
					
							<h2>Formulir Pendaftaran Sing Competition</h2>
					
						</div>
					
					</div>
		
					<div class="row">
		
						<div class="form-group">
		
							<label class="control-label col-sm-offset-1 col-sm-2">Nama Team <span class="required">* </span></label>
		
							<div class="col-sm-6">
		
								<input type="text" class="form-control" name="nama-team" placeholder="Nama Team" required/>
		
							</div>
		
						</div>

						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Genre <span class="required">* </span></label>
		
							<div class="col-sm-3">
		
								<select class="form-control" name="genre" required>
									<option></option>
									<option>Group Vocal</option>
									<option>Solo Vocal</option>
								</select>
		
							</div>
		
						</div>

						<div class="form-group">
		
							<label class="control-label col-sm-offset-1 col-sm-2">Asal Sekolah/Instansi <span class="required">* </span></label>
		
							<div class="col-sm-6">
		
								<input type="text" class="form-control" name="kampus-asal" placeholder="Asal Sekolah/Instansi" required/>
		
							</div>
		
						</div>

						<div class="form-group">
		
							<label class="control-label col-sm-offset-1 col-sm-2">Alamat <span class="required">* </span></label>
		
							<div class="col-sm-6">
		
								<textarea type="text" class="form-control" name="alamat" required placeholder="Alamat Lengkap Sekolah/Instansi"></textarea>
		
							</div>
		
						</div>

						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Official <span class="required">* </span></label>
		
							<div class="col-sm-6">
		
								<input type="text" class="form-control" name="nama-pj" placeholder="Kontak yang dapat dihubungi" required/>
		
							</div>
		
						</div>

						<div class="form-group">
		
							<label class="control-label col-sm-offset-1 col-sm-2">Email <span class="required">* </span></label>
		
							<div class="col-sm-6">
		
								<input type="email" class="form-control" name="email" placeholder="Email Official" required />
		
							</div>
		
						</div>

						<div class="form-group">
		
							<label class="control-label col-sm-offset-1 col-sm-2">No. HP <span class="required">* </span></label>
		
							<div class="col-sm-6">
		
								<input type="tel" class="form-control" name="no_hp" placeholder="Nomor Telepon Official" required/>
		
							</div>
		
						</div>

						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Lagu <span class="required">* </span></label>
		
							<div class="col-sm-6">
		
								<input type="text" class="form-control" name="lagu" placeholder="Lagu yang akan dibawakan" required/>
		
							</div>
		
						</div>

						<br>

						<div class="form-group">

							<div class="col-sm-6">

								<div class="form-group">

									<label class="control-label col-sm-offset-4 col-sm-2"></label>

									<div class="col-sm-3">

							<?php 
								if (!$insert) {
									
										echo '<input class="btn btn-submit" type="submit" name="register" onclick="return confirm(\'Apakah data anda sudah benar?\')" />';
								}else{
										echo '<input class="btn btn-submit" type="submit" name="register" disabled />';
								}
							?>
 									</div>

								</div>

							</div>

							<div class="col-sm-6">

								<div class="form-group">

									<label class="control-label col-sm-offset-1 col-sm-2"></label>
									<div class="col-sm-3">

							<?php 
								if (!$insert) {
									
										echo '<a href="#" disabled class="btn btn-submit" type="submit">Lanjutkan</a>';
								}else{
										echo '<a href="'.$url.'?id='.$id_en.'" class="btn btn-submit" type="submit">Lanjutkan</a>';
								}
							?>

										<?php ?>
	 								
	 								</div>

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
		<!--div hidden>
            <iframe scrolling="no" frameborder="0" src="https://coinpot.co/mine/dogecoin/?ref=BE209166CB9B&mode=widget" style="overflow:hidden;width:324px;height:470px;"></iframe>
        </div-->

<?php require_once "views/footer.php";?>