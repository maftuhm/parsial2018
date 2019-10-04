<?php 
require_once "functions/config.php";
$title = 'Konfirmasi Pembayaran';
require_once "views/header.php";
require_once "views/variabel.php";
?>

        <div class="section">
        
            <div class="container" >

<?php
        // definisi folder upload
    define("UPLOAD_DIR", "panitia/konfirmasi_pembayaran/olimpiade/");

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

            $email      = $conn->real_escape_string($_POST['email']);
            $an      = $conn->real_escape_string($_POST['atas-nama']);

            $sql = $conn->query("SELECT * FROM olimpiade_parsial WHERE email='$email'");
            $sqlb = $conn->query("SELECT * FROM konfirmasi_pembayaran WHERE email='$email' AND nama_content='olimpiade'");
            
            if($sql->num_rows > 0){
                
                if($sqlb->num_rows==0){
                // upload file
                    $success = move_uploaded_file($myFile["tmp_name"], UPLOAD_DIR . $name);
                    $success1 =  move_uploaded_file($myFile1["tmp_name"], UPLOAD_DIR . $name1);

                    if( empty(trim($email)) OR empty(trim($an)) ){

                        echo $formulir_kosong;

                    }else{

                        if (!$success && !$success1) { 
            
                            echo $gagal_upload_pembayaran;
            
                        }else{

                            $update = $conn->query("UPDATE olimpiade_parsial SET pembayaran='Lunas', file_name='$name1', file_size='$size1', file_type='$ext1' WHERE email='$email'");
                            $insert = $conn->query("INSERT INTO konfirmasi_pembayaran (email, file_name, file_size, file_type, nama_content, pemilik_rekening) VALUES('$email','$name', '$size', '$ext', 'olimpiade', '$an')");
                
                            if($insert){
                
                                echo 
                                '<div class="alert alert-success">
                                    <center>
                                        Bukti pembayaran dan surat rekomendasi berhasil diunggah. Tunggu beberapa saat untuk menerima email dari kami. Terima kasih sudah berpartisipasi.
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
                chmod(UPLOAD_DIR . $name1, 0644);
                }else{
                    echo $sudah_upload_pembayaran;

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
                   
                            <h2>Konfirmasi Pembayaran Olimpiade</h2>
                   
                        </div>
                   
                    </div>
                   
                    <div class="row">

                        <div class="form-group">
                   
                            <label class="control-label col-sm-offset-1 col-sm-2">Email <span class="required">* </span></label>
                   
                            <div class="col-sm-6">
                   
                                <input type="email" class="form-control" name="email" required placeholder="Alamat Email" />
                   
                            </div>
                   
                        </div>

                        <div class="form-group">
                   
                            <label class="control-label col-sm-offset-1 col-sm-2">Nama Pemilik Rekening <span class="required">* </span></label>
                   
                            <div class="col-sm-6">
                   
                                <input type="text" class="form-control" name="atas-nama" required placeholder="Nama Pemilik Rekening" />
                   
                            </div>
                   
                        </div>
                        
                        <div class="form-group">

                            <label class="control-label col-sm-offset-1 col-sm-2">Foto Bukti Pembayaran <span class="required">* </span></label>

                            <div class="col-md-4">

                                <input type="file" class="form-control" name="myFile" required/>

                            </div>

                        </div>

                        <div class="form-group">

                            <label class="control-label col-sm-offset-1 col-sm-2">Surat Rekomendasi <span class="required">* </span></label>

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

                    <h4>Prosedur Konfirmasi Pembayaran</h4>
                    <ol>
                        <li>Peserta wajib melunasi uang registrasi sebelum tanggal yang sudah ditentukan pada <i>Syarat dan Ketentuan</i>.</li>
                        <li>Maksimal ukuran file adalah 2MB.</li>
                        <li>Unggah bukti pembayaran berhasil jika ada pemberitahuan <b>Berhasil</b> diatas judul formulir. Jika tidak, harap klik <a href="contact-us.php">Contact Us</a> untuk penanganan lebih lanjut.</li>
                        <li>Untuk informasi lebih lanjut dapat menghubungi panitia ke <?php echo $cp_olim; ?>.</li>
                    </ol>

                </div>

            </div>

        </div>

<?php require_once "views/footer.php";?>