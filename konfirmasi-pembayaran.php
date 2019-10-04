<?php 
require_once "functions/config.php";
$title = 'Konfirmasi Pembayaran';
require_once "views/header.php";
require_once "views/variabel.php";
?>

        <div class="section">
        
            <div class="container" >

<?php

    if(isset($_GET['nama_content'])){

        $nama_content = $back_dir.$_GET['nama_content'];

        if($nama_content == 'futsal'){
            $nama_tabel = 'futsal_parsial';
            $judul = 'Futsal';
            $cp = $cp_futsal;
        }

        if($nama_content == 'tryout_sbmptn'){
            $nama_tabel = 'tryout_sbmptn_parsial';
            // $judul = 'Try Out SBMPTN';
            $cp = $cp_to;
            $judul = 'Try Out SBMPTN <b style="color: red;">(Ditutup)</b>';
            $disabled ='';// 'disabled';

/*            echo '              <div class="alert alert-info">
                    <h2 style = "color : #31708f; border:none; margin-bottom: 0;">Mohon maaf, formulir dalam masa perbaikan</h2>
                    <h4 style="padding-left: 10px;">Kami akan segera kembali.</h4>
                </div>

            </div>

        </div>

        <!-- Javascripts -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js"></script>
        <script src="js/jquery.sequence-min.js"></script>
    </body>
</html>';
exit;*/
        }

        if($nama_content == 'singcomp'){
            $nama_tabel = 'singcomp_parsial';
            $judul = 'Sing Competition';
            $cp = $cp_singcomp;
        }
        
        if($nama_content == 'workshop'){
            $nama_tabel = 'workshop_parsial';
            $judul = 'Workshop';
            $cp = $cp_workshop;
        }

        // definisi folder upload
        define("UPLOAD_DIR", "panitia/konfirmasi_pembayaran/$nama_content/");

        if (!empty($_FILES["myFile"])) {

            $myFile = $_FILES["myFile"];
            $ext    = pathinfo($_FILES["myFile"]["name"], PATHINFO_EXTENSION);
            $size   = $_FILES["myFile"]["size"];
            $tgl    = date("Y-m-d");

            if ($myFile["error"] !== UPLOAD_ERR_OK) {

                echo $over_size;
                exit;
            }

            // filename yang aman
            $name = preg_replace("/[^A-Z0-9._-]/i", "_", $myFile["name"]);

            // mencegah overwrite filename
            $i = 0;
            $parts = pathinfo($name);

            while (file_exists(UPLOAD_DIR . $name)) {

                $i++;
                $name = $parts["filename"] . "-" . $i . "." . $parts["extension"];
            }

            if($_POST['register']){

                $email  = $conn->real_escape_string($_POST['email']);
                $an  = $conn->real_escape_string($_POST['atas-nama']);

                $sql = $conn->query("SELECT * FROM $nama_tabel WHERE email='$email'");
                $sqlb = $conn->query("SELECT * FROM konfirmasi_pembayaran WHERE email='$email' AND nama_content='$nama_content'");

                if($sql->num_rows > 0){

                    if($sqlb->num_rows==0){
                    // upload file
                        $success = move_uploaded_file($myFile["tmp_name"], UPLOAD_DIR . $name);

                        if(empty(trim($email)) OR empty(trim($an))){

                            echo $formulir_kosong;

                        }else{

                            if (!$success) { 

                                echo $gagal_upload_pembayaran;
                                exit;

                            }else{

                                $update = $conn->query("UPDATE $nama_tabel SET pembayaran='Lunas' WHERE email='$email'");
                                $insert = $conn->query("INSERT INTO konfirmasi_pembayaran (email, file_name, file_size, file_type, nama_content, pemilik_rekening) VALUES('$email','$name', '$size', '$ext', '$nama_content', '$an')");

                                if($insert){

                                    echo 
                                    '<div class="alert alert-success">
                                        <center>
                                            Bukti pembayaran berhasil diunggah. Tunggu beberapa saat untuk menerima email dari kami. Terima kasih sudah berpartisipasi.
                                        </center>
                                    </div>';

                                }else{

                                    echo $error_database_pembayaran;
                                    exit;

                                }
                            }
                        }

                        // set permisi file
                        chmod(UPLOAD_DIR . $name, 0644);
                    
                    }else{
                        
                        echo $sudah_upload_pembayaran;
                    }

                }else{

                    echo $email_tidak_terdaftar;
                }
            } 
        }

    }else{
        echo $url_salah;
        exit;
    }

?>
    			<form class="form-horizontal" id="submit_form" method="POST" enctype="multipart/form-data">
    				
                    <div class="row">
    				
                    	<div class="col-sm-12">
    				
                    		<h2>Konfirmasi Pembayaran <?php echo $judul;?></h2>
    				
                    	</div>
    				
                    </div>
    				
                    <div class="row">

    					<div class="form-group">

                            <label class="control-label col-sm-offset-1 col-sm-2">Email <span class="required">* </span></label>

                            <div class="col-sm-6">

                                <input type="email" class="form-control" name="email" required <?= $disabled;?>  placeholder="Alamat Email" />

                            </div>

                        </div>
                    
                        <div class="form-group">

                            <label class="control-label col-sm-offset-1 col-sm-2">Nama Pemilik Rekening <span class="required">* </span></label>

                            <div class="col-sm-6">
                    
                                <input type="text" class="form-control" name="atas-nama" required <?= $disabled;?>  placeholder="Nama Pemilik Rekening" />
                    
                            </div>
                    
                        </div>

    					<div class="form-group">

    						<label class="control-label col-sm-offset-1 col-sm-2">Foto Bukti Pembayaran <span class="required">* </span></label>

    						<div class="col-md-4">

    							<input type="file" name="myFile" <?= $disabled;?> required/>

     						</div>

    					</div>
    					
                        <div class="form-actions">

                            <div class="row">

                                <div class="col-sm-offset-1 col-sm-3">

                                    <?php echo '<input class="btn btn-submit" type="submit" name="register" '.$disabled.' onclick="return confirm(\'Apakah data anda sudah benar?\')" />';?>
                                    
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
    
                    <h4>Prosedur Konfirmasi Pembayaran</h4>
    
                    <ol>
                        <li>Peserta wajib melunasi uang registrasi sebelum tanggal yang sudah ditentukan pada <i>Syarat dan Ketentuan</i>.</li>
                        <li>Maksimal ukuran file adalah 2MB.</li>
                        <li>Unggah bukti pembayaran berhasil jika ada pemberitahuan <b>Berhasil</b> diatas judul formulir. Jika tidak, harap klik <a href="contact-us.php">Contact Us</a> untuk penanganan lebih lanjut.</li>
                        <li>Untuk informasi lebih lanjut dapat menghubungi panitia ke <?php echo $cp;?>.</li>
                    </ol>
    
                </div>
    
            </div>
    
        </div>

<?php require_once "views/footer.php";?>