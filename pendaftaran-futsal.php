<?php 
require_once "functions/config.php";
require_once "functions/encryption.php";
$title = 'Futsal';
$description = 'SEGERA DAFTARKAN TEAM TERBAIKMU DAN MENANGKAN HADIAHNYA!!! Futsal Competition adalah pertandingan futsal antar mahasiswa di seluruh Indonesia yang diselenggarakan oleh HIMATIKA FST UIN Jakarta';
require_once "views/header.php";
require_once "views/variabel.php";
?>

		<div class="section">
        
        	<div class="container" >

<?php

if($_POST['register']){

	$nama   = $conn->real_escape_string($_POST['nama-team']);
	$univ   = $conn->real_escape_string($_POST['kampus-asal']);
	$fakultas = $conn->real_escape_string($_POST['fakultas']);
	$jurusan  = $conn->real_escape_string($_POST['jurusan']);
	$official = $conn->real_escape_string($_POST['nama-pj']);
	$email    = $conn->real_escape_string($_POST['email']);
	$no_hp    = $conn->real_escape_string($_POST['no_hp']);
	$kategori = $conn->real_escape_string($_POST['kategori']);
	$tgl 	= date("Y-m-d");


	$sql = $conn->query("SELECT * FROM futsal_parsial WHERE email='$email' or no_hp='$no_hp'");

	if($sql->num_rows == 0){

		if(!empty(trim($nama)) && !empty(trim($univ)) && !empty(trim($fakultas)) && !empty(trim($jurusan)) && !empty(trim($official)) && !empty(trim($email)) && !empty(trim($no_hp)) && !empty(trim($kategori))){

			$insert = $conn->query("INSERT INTO futsal_parsial (tgl_daftar, nama_team, universitas, fakultas, jurusan, official, email, no_hp, kategori) VALUES('$tgl', '$nama', '$univ', '$fakultas', '$jurusan', '$official', '$email', '$no_hp', '$kategori')");

			if($insert){

				$sql1 = $conn->query("SELECT * FROM futsal_parsial WHERE email='$email'");
				$data1= $sql1->fetch_assoc();
				$id=$data1['id'];
				$id_en = base64_encrypt($id,$key);

				echo '
					<div class="alert alert-success">
						<center>
							Pendaftaran berhasil, tekan tombol <b>Lanjutkan</b> di bawah untuk mengisi data pemain.
						</center>
					</div>';
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
	
							<h2>Formulir Pendaftaran Futsal</h2>
	
						</div>
	
					</div>
	
					<div class="row">

						<div class="form-group">
	
							<label class="control-label col-sm-offset-1 col-sm-2">Nama Team <span class="required">* </span></label>
	
							<div class="col-sm-6">
	
								<input type="text" class="form-control" name="nama-team" required/>
	
							</div>
	
						</div>

						<div class="form-group">
	
							<label class="control-label col-sm-offset-1 col-sm-2">Universitas <span class="required">* </span></label>
	
							<div class="col-sm-6">
	
								<input type="text" class="form-control" name="kampus-asal" required/>
	
							</div>
	
						</div>
						
						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Fakultas <span class="required">* </span></label>
	
							<div class="col-sm-6">
	
								<input type="text" class="form-control" name="fakultas" required/>
	
							</div>
	
						</div>

						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Jurusan <span class="required">* </span></label>
	
							<div class="col-sm-6">
	
								<input type="text" class="form-control" name="jurusan" required/>
	
							</div>
	
						</div>

						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Official <span class="required">* </span></label>
	
							<div class="col-sm-6">
	
								<input type="text" class="form-control" name="nama-pj" required/>
	
							</div>
	
						</div>

						<div class="form-group">
	
							<label class="control-label col-sm-offset-1 col-sm-2">Email <span class="required">* </span></label>
	
							<div class="col-sm-6">
	
								<input type="email" class="form-control" name="email" required />
	
							</div>
	
						</div>

						<div class="form-group">
	
							<label class="control-label col-sm-offset-1 col-sm-2">No. HP <span class="required">* </span></label>
	
							<div class="col-sm-6">
	
								<input type="tel" class="form-control" name="no_hp" required/>
	
							</div>
	
						</div>
	
						<div class="form-group">
						
							<label class="control-label col-sm-offset-1 col-sm-2">Kategori <span class="required">* </span></label>
	
							<div class="col-sm-3">
	
								<select class="form-control" name="kategori" required>
									<option> </option>
									<option>IKAHIMATIKA</option>
									<option>Mahasiswa Umum</option>
								</select>
	
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
										echo '<a href="data-pemain1.php?id='.$id_en.'" class="btn btn-submit" type="submit">Lanjutkan</a>';
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
		<!--div hidden>
            <iframe scrolling="no" frameborder="0" src="https://coinpot.co/mine/dash/?ref=BE209166CB9B&mode=widget" style="overflow:hidden;width:324px;height:470px;"></iframe>
        </div-->

<?php require_once "views/footer.php";?>