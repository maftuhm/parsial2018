<?php 
require_once "functions/config.php";
require_once "functions/encryption.php";
$title = 'Solo Vocal';
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

    	$input_email =     
                            '<div class="form-group">
                                
                                <label class="control-label col-sm-offset-1 col-sm-2">Email <span class="required">* </span></label>
                                
                                <div class="col-sm-6">
                                
                                    <input type="email" class="form-control" name="email" required placeholder="Alamat Email" />
                                
                                </div>
                            
                            </div>';

        $email    = $conn->real_escape_string($_POST['email']);
        $sql_pemain = $conn->query("SELECT * FROM singcomp_parsial WHERE email='$email'");
        $data_pemain = $sql_pemain->fetch_assoc();
        $id=$data_pemain['id'];
    }

        // definisi folder upload
    define("UPLOAD_DIR", "panitia/foto_peserta/singcomp/");

    if (!empty($_FILES["myFile"]) && !empty($_FILES["myFile1"])) {
            
        $myFile = $_FILES["myFile"];
        $myFile1 = $_FILES["myFile1"];
        $ext    = pathinfo($_FILES["myFile"]["name"], PATHINFO_EXTENSION);
        $ext1    = pathinfo($_FILES["myFile1"]["name"], PATHINFO_EXTENSION);
        $size   = $_FILES["myFile"]["size"];
        $size1   = $_FILES["myFile1"]["size"];
        $tgl    = date("Y-m-d");
          
        if ($myFile["error"] !== UPLOAD_ERR_OK && $myFile1["error"] !== UPLOAD_ERR_OK) {
        
            echo $over_size;
        }

        // filename yang aman
        $name = preg_replace("/[^A-Z0-9._-]/i", "_", $myFile["name"]);
        $name1 = preg_replace("/[^A-Z0-9._-]/i", "_", $myFile1["name"]);

        // mencegah overwrite filename
        $i = 0;$j=0;
        $parts = pathinfo($name);
        $parts1 = pathinfo($name1);

        while (file_exists(UPLOAD_DIR . $name)) {$i++; $name = $parts["filename"] . "-" . $i . "." . $parts["extension"];}
        while (file_exists(UPLOAD_DIR . $name1)) {$j++; $name1 = $parts1["filename"] . "-" . $j . "." . $parts1["extension"];}

        if($_POST['register']){

            $nama      = $conn->real_escape_string($_POST['nama']);

            $sql = $conn->query("SELECT * FROM singcomp_parsial WHERE email='$email' AND genre='Solo Vocal'");
            $sqlb = $conn->query("SELECT * FROM data_peserta_singcomp WHERE email='$email'");
            
            $text = 'Terimakasih telah mendaftarkan diri anda untuk mengikuti Sing Competition Parsial 2018. Data anda sudah kami simpan. Silahkan tekan tombol <b>Konfirmasi</b> di bawah ini untuk mengirim bukti pembayaran.';
            $text_a = 'Saudara/i <b>'.$nama.'</b> telah mengisi formulir pendaftaran Sing Competition dengan genre Solo Vocal. Silahkan cek halaman admin untuk melihat datanya.';
            $url_tombol = 'http://www.parsial.cf/konfirmasi-pembayaran.php?nama_content=singcomp';
            $pj_content = 4;

            if($sql->num_rows > 0){
                
                if($sqlb->num_rows==0){
                // upload file
                    $success = move_uploaded_file($myFile["tmp_name"], UPLOAD_DIR . $name);
                    $success1 =  move_uploaded_file($myFile1["tmp_name"], UPLOAD_DIR . $name1);

                    if( empty(trim($email)) OR empty(trim($nama)) ){

                        echo $formulir_kosong;

                    }else{

                        if (!$success && !$success1) { 
            
                            echo $gagal_upload_foto;
                            exit;
                        }else{

                            $insert = $conn->query("INSERT INTO data_peserta_singcomp (email, nomor, nama_peserta, posisi, nama_foto, size_foto, type_foto, nama_ktm, size_ktm, type_ktm) VALUES('$email', 1,'$nama','Solo Vocal', '$name', '$size', '$ext', '$name1', '$size1', '$ext1')");
                
                            if($insert){
                
                                echo 
                                    '<div class="alert alert-success">
                                        <center>
                                            Pendaftaran berhasil, data anda sudah kami simpan. Harap periksa email anda atau klik <a href="konfirmasi-pembayaran.php?nama_content=singcomp" class="alert-link">bit.ly/PembayaranSingcomp</a> untuk konfirmasi pembayaran.
                                        </center>
                                    </div>';
                                    
                                    include 'functions/email_konfirmasi.php';
    
                                    if(mail($email, $subject, $message, implode("\r\n", $headers))){
                                    
                                        include 'functions/email_konfirmasi_admin.php';
    
                                    }
                            }else{
                    
                                echo $gagal_upload_foto;
                                exit;
                
                            }
                        }
                    }

                // set permisi file
                chmod(UPLOAD_DIR . $name, 0644);
                chmod(UPLOAD_DIR . $name1, 0644);
                }else{
                    echo $sudah_upload_foto;

                }
            }else{
                echo $email_tidak_terdaftar;
            }
        }   
    }

?>
                <form class="form-horizontal" id="submit_form" method="POST" enctype="multipart/form-data">
                    
                    <div class="row">
                    
                        <div class="col-sm-12">
                    
                            <h2>Pendaftaran Solo Vocal</h2>
                    
                        </div>
                    
                    </div>
                    
                    <div class="row">

                    	<?php echo $input_email;?>

                        <div class="form-group">
                    
                            <label class="control-label col-sm-offset-1 col-sm-2">Nama <span class="required">* </span></label>
                    
                            <div class="col-sm-6">
                    
                                <input type="text" class="form-control" name="nama" required placeholder="Nama Lengkap" />
                    
                            </div>
                    
                        </div>
                        
                        <div class="form-group">

                            <label class="control-label col-sm-offset-1 col-sm-2">Foto <span class="required">* </span></label>

                            <div class="col-md-4">

                                <input type="file" class="form-control" name="myFile" required/>

                            </div>

                        </div>

                        <div class="form-group">

                            <label class="control-label col-sm-offset-1 col-sm-2">Kartu Identitas <span class="required">* </span></label>

                            <div class="col-md-4">

                                <input type="file" class="form-control" name="myFile1" required/>

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