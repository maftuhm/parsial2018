<?php

$email_dan_no_terdaftar = 
				'<div class="alert alert-danger">
					<center>
						Nomor handphone atau alamat email sudah terdaftar.
					</center>
				</div>';

$email_tidak_terdaftar = 
				'<div class="alert alert-danger">
					<center>
						Alamat email tidak terdaftar.
					</center>
				</div>';

$over_size = 
				'<div class="alert alert-warning">
					<center>
						File kosong atau terdapat kesalahan pada file atau ukuran file terlalu besar. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia
					</center>
				</div>';

$gagal_upload_pembayaran = 
				'<div class="alert alert-warning">
					<center>
						Mohon maaf atas ketidaknyamanan anda, <b>Unggah bukti pembayaran gagal</b>. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia.
					</center>
				</div>';

$error_database_pembayaran = 
				'<div class="alert alert-warning">
					<center>
						Mohon maaf atas ketidaknyamanan anda, terdapat masalah saat menyimpan data ke database <b>Unggah bukti pembayaran gagal</b>. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia.
					</center>
				</div>';

$gagal_upload_foto = 
				'<div class="alert alert-warning">
					<center>
						Mohon maaf atas ketidaknyamanan anda, <b>Unggah foto dan kartu identitas gagal</b>. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia.
					</center>
				</div>';
$sudah_upload_pembayaran =
				'<div class="alert alert-warning">
					<center>
						Anda sudah mengunggah bukti pembayaran. Harap hubungi panitia jika ingin mengunggah ulang.
					</center>
				</div>';

$sudah_upload_foto =
				'<div class="alert alert-warning">
					<center>
						Anda sudah mengunggah foto dan kartu identitas. Harap hubungi panitia jika ingin mengunggah ulang.
					</center>
				</div>';

$formulir_kosong = 
				'<div class="alert alert-danger">
					<center>
						Formulir wajib diisi.
					</center>
				</div>';

$pendaftaran_gagal = 
				'<div class="alert alert-danger">
					<center>
						Mohon maaf atas ketidaknyamanan anda <b>Pendaftaran gagal</b>. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia.
					</center>
				</div>';

$url_futsal 			= '<a href="pendaftaran-futsal.php">bit.ly/futsalParsial2018</a>';

$url_pembayaran_futsal = '<a href="konfirmasi-pembayaran.php?nama_content=futsal">bit.ly/PembayaranFutsal</a>';

$url_to 				= '<a href="pendaftaran-try-out-sbmptn.php">bit.ly/tryoutParsial</a>';

$url_pembayaran_to 		= '<a href="konfirmasi-pembayaran.php?nama_content=tryout_sbmptn">bit.ly/PembayaranTo</a>';

$url_olim 				= '<a href="pendaftaran-olimpiade.php">bit.ly/olimParsial</a>';

$url_pembayaran_olim 	= '<a href="konfirmasi-pembayaran-olim.php">bit.ly/PembayaranOlimpiade</a>';

$url_singcomp 			= '<a href="pendaftaran-singcomp.php">bit.ly/singcomParsial</a>';

$url_pembayaran_singcomp = '<a href="konfirmasi-pembayaran.php?nama_content=singcomp">bit.ly/PembayaranSingcomp</a>';

$url_workshop 			= '<a href="pendaftaran-workshop.php">bit.ly/workshopParsial</a>';

$url_pembayaran_workshop = '<a href="konfirmasi-pembayaran.php?nama_content=workshop">bit.ly/PembayaranWorkshop</a>';

$url_salah 				= 
				'<div class="alert alert-danger">
						<h2 style = "color : #a94442; border:none">Alamat Url salah.</h2>
						<h4>Untuk konfirmasi pembayaran silahkan klik url berikut : </h4> 
						<ul>
							<li>Futsal '.$url_pembayaran_futsal.'</li>
							<li>Tryot SBMPTN '.$url_pembayaran_to.'</li>
							<li>Olimpiade Matematika '.$url_pembayaran_olim.'</li>
							<li>Sing Competition '.$url_pembayaran_singcomp.'.</li>
							<li>Workshop '.$url_pembayaran_workshop.'.</li>
						</ul>
				</div>';

$tombol_daftar = '<input class="btn btn-submit" type="submit" name="register" onclick="return confirm(\'Apakah data anda sudah benar?\')" />';

$text_to = 'Terimakasih telah mendaftarkan diri anda untuk mengikuti Try Out SBMPTN Parsial 2018. Data anda sudah kami simpan. Silahkan tekan tombol <b>Pembayaran</b> untuk mengirim bukti pembayaran.';
$text_futsal = 'Terimakasih telah mendaftarkan team anda untuk mengikuti Futsal Competition Parsial 2018. Data team anda sudah kami simpan. Silahkan tekan tombol <b>Pembayaran</b> untuk mengirim bukti pembayaran.';
$text_olim = 'Terimakasih telah mendaftarkan diri anda untuk mengikuti Olimpiade Matematika Parsial 2018. Data anda sudah kami simpan. Silahkan tekan tombol <b>Pembayaran</b> untuk mengirim bukti pembayaran.';
$text_singcomp = 'Terimakasih telah mendaftarkan group anda untuk mengikuti Sing Competition Parsial 2018. Data group anda sudah kami simpan. Silahkan tekan tombol <b>Pembayaran</b> untuk mengirim bukti pembayaran.';
//$text_admin = 'Saudara/saudari '.$nama.' telah mengisi formulir pendaftaran '.$nama_konten.'. Silahkan cek halaman admin untuk melihat datanya.';

    $cp_futsal='Umum : <b>rcitraas</b> (Line) IKAHIMATIKA : <b>azahrabenita</b> (Line)';
    $cp_to='<b>08561130411 (Figia)</b>';
    $cp_olim='<b>085718765202 (Adisty)</b>';
    $cp_singcomp='<b>082213203822 (Tira Amelia)</b>';
    $cp_workshop = '<b>intansaridewi</b> (Line) / <b>085607002701</b> (WA)';
    $admin = 'Line : <b>mashurimaftuh</b> WA : <b>085777455031</b>';

?>