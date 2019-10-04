<?php

if($_POST['register']){
    
    define("UPLOAD_DIR", "panitia/foto_peserta/singcomp/");

    $nama_peserta_1     = $conn->real_escape_string($_POST['nama-peserta-1']);
    $posisi_1           = $conn->real_escape_string($_POST['posisi-1']);
    $nama_peserta_2     = $conn->real_escape_string($_POST['nama-peserta-2']);
    $posisi_2           = $conn->real_escape_string($_POST['posisi-2']);
    $nama_peserta_3     = $conn->real_escape_string($_POST['nama-peserta-3']);
    $posisi_3           = $conn->real_escape_string($_POST['posisi-3']);
    $nama_peserta_4     = $conn->real_escape_string($_POST['nama-peserta-4']);
    $posisi_4           = $conn->real_escape_string($_POST['posisi-4']);
    $nama_peserta_5     = $conn->real_escape_string($_POST['nama-peserta-5']);
    $posisi_5           = $conn->real_escape_string($_POST['posisi-5']);
    $nama_peserta_6     = $conn->real_escape_string($_POST['nama-peserta-6']);
    $posisi_6           = $conn->real_escape_string($_POST['posisi-6']);
    
    $sql = $conn->query("SELECT * FROM singcomp_parsial WHERE email='$email' AND genre='Group Vocal'");
    $sqlb = $conn->query("SELECT * FROM data_peserta_singcomp WHERE email='$email'");
    $data_p = $sql->fetch_assoc();
    $nama = $data_p['official'];
    $nama_team = $data_p['nama_team'];
    $text = 'Terimakasih telah mendaftarkan grup musik anda untuk mengikuti Sing Competition Parsial 2018. Data grup anda sudah kami simpan. Silahkan tekan tombol <b>Konfirmasi</b> di bawah ini untuk mengirim bukti pembayaran.';
    $text_a = 'Grup musik dengan nama '.$nama_team.' telah mengisi formulir pendaftaran Sing Competition. Silahkan cek halaman admin untuk melihat datanya.';
    $url_tombol = 'http://www.parsial.cf/konfirmasi-pembayaran.php?nama_content=singcomp';
    $pj_content = 4;

    if($sql->num_rows > 0){

        if($sqlb->num_rows == 0){

            if(!empty(trim($email))){

                if (!empty(trim($nama_peserta_1)) && !empty(trim($posisi_1)) && !empty($_FILES["foto-1"]) && !empty($_FILES["ktm-1"]) && !empty(trim($nama_peserta_2)) && !empty(trim($posisi_2)) && !empty($_FILES["foto-2"]) && !empty($_FILES["ktm-2"])){

                    $foto_1 = $_FILES["foto-1"];    $ktm_1 = $_FILES["ktm-1"];
                    $foto_2 = $_FILES["foto-2"];    $ktm_2 = $_FILES["ktm-2"];

                    $ext_foto_1 = pathinfo($_FILES["foto-1"]["name"], PATHINFO_EXTENSION);
                    $ext_ktm_1  = pathinfo($_FILES["ktm-1"]["name"], PATHINFO_EXTENSION);
                    $ext_foto_2 = pathinfo($_FILES["foto-2"]["name"], PATHINFO_EXTENSION);
                    $ext_ktm_2  = pathinfo($_FILES["ktm-2"]["name"], PATHINFO_EXTENSION);

                    $size_foto_1   = $_FILES["foto-1"]["size"]; $size_ktm_1   = $_FILES["ktm-1"]["size"];
                    $size_foto_2   = $_FILES["foto-2"]["size"]; $size_ktm_2   = $_FILES["ktm-2"]["size"];
                    
                    // filename yang aman
                    $nama_foto_1 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_1["name"]); 
                    $nama_ktm_1  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_1["name"]);
                    $nama_foto_2 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_2["name"]); 
                    $nama_ktm_2  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_2["name"]);

                    // mencegah overwrite filename
                    $i=0; $j=0; $k=0; $l=0;
                    $parts_foto_1 = pathinfo($nama_foto_1); $parts_ktm_1 = pathinfo($nama_ktm_1);
                    $parts_foto_2 = pathinfo($nama_foto_2); $parts_ktm_2 = pathinfo($nama_ktm_2);

                    while (file_exists(UPLOAD_DIR . $nama_foto_1)){
                        $i++;
                        $nama_foto_1 = $parts_foto_1["filename"] . "-" . $i . "." . $parts_foto_1["extension"];
                    }
                    while (file_exists(UPLOAD_DIR . $nama_ktm_1)){
                        $j++;
                        $nama_ktm_1 = $parts_ktm_1["filename"] . "-" . $j . "." . $parts_ktm_1["extension"];
                    }
                    while (file_exists(UPLOAD_DIR . $nama_foto_2)){
                        $k++;
                        $nama_foto_2 = $parts_foto_2["filename"] . "-" . $k . "." . $parts_foto_2["extension"];
                    }
                    while (file_exists(UPLOAD_DIR . $nama_ktm_2)){
                        $l++;
                        $nama_ktm_2 = $parts_ktm_2["filename"] . "-" . $l . "." . $parts_ktm_2["extension"];
                    }

                    $nama_foto_1 = "1-" . $parts_foto_1["filename"] . "." . $parts_foto_1["extension"];
                    $nama_ktm_1 = "2-" . $parts_ktm_1["filename"] . "." . $parts_ktm_1["extension"];
                    $nama_foto_2 = "3-" . $parts_foto_2["filename"] . "." . $parts_foto_2["extension"];
                    $nama_ktm_2 = "4-" . $parts_ktm_2["filename"] . "." . $parts_ktm_2["extension"];

                    $fileType = exif_imagetype($foto_1["tmp_name"]) && exif_imagetype($ktm_1["tmp_name"]) &&  exif_imagetype($foto_2["tmp_name"]) && exif_imagetype($ktm_2["tmp_name"]);

                    $allowed = array(IMAGETYPE_GIF, IMAGETYPE_JPEG, IMAGETYPE_PNG);

                    if (!in_array($fileType, $allowed)) {
                  
                        // file type is not permitted
                        echo '<div class="alert alert-warning"><center>File harus dalam bentuk gambar</center></div>';
                        exit;
              
                    }else{

                        // upload file
                        $foto_sukses_1  = move_uploaded_file($foto_1["tmp_name"], UPLOAD_DIR . $nama_foto_1); 
                        $ktm_sukses_1   = move_uploaded_file($ktm_1["tmp_name"], UPLOAD_DIR . $nama_ktm_1);
                        $foto_sukses_2  = move_uploaded_file($foto_2["tmp_name"], UPLOAD_DIR . $nama_foto_2); 
                        $ktm_sukses_2   = move_uploaded_file($ktm_2["tmp_name"], UPLOAD_DIR . $nama_ktm_2);
                

                        if (!$foto_sukses_1 && !$ktm_sukses_1 && !$foto_sukses_2 && !$ktm_sukses_2){

                            echo '
                            <div class="alert alert-warning">
                                <center>
                                    Mohon maaf atas ketidaknyamanan anda, <b>Unggah foto dan kartu identitas gagal</b>. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia.
                                </center>
                            </div>';
                
                        }else{

                            $insert1 = $conn->query("INSERT INTO data_peserta_singcomp (email, nomor, nama_peserta, posisi, nama_foto, size_foto, type_foto, nama_ktm, size_ktm, type_ktm)
                                VALUES

                                ('$email', 1, '$nama_peserta_1','$posisi_1', '$nama_foto_1', '$size_foto_1', '$ext_foto_1', '$nama_ktm_1', '$size_ktm_1', '$ext_ktm_1'), ('$email', 1, '$nama_peserta_2', '$posisi_2', '$nama_foto_2', '$size_foto_2', '$ext_foto_2', '$nama_ktm_2', '$size_ktm_2', '$ext_ktm_2')
                                ");
                        }
                                
                    }

                    chmod(UPLOAD_DIR . $nama_foto_1, 0644); chmod(UPLOAD_DIR . $nama_ktm_1, 0644);        
                    chmod(UPLOAD_DIR . $nama_foto_2, 0644); chmod(UPLOAD_DIR . $nama_ktm_2, 0644);


                    if (!empty(trim($nama_peserta_3)) && !empty(trim($posisi_3)) && !empty($_FILES["foto-3"]) && !empty($_FILES["ktm-3"])){
                    
                        $foto_3 = $_FILES["foto-3"];    $ktm_3 = $_FILES["ktm-3"];

                        $ext_foto_3 = pathinfo($_FILES["foto-3"]["name"], PATHINFO_EXTENSION);
                        $ext_ktm_3  = pathinfo($_FILES["ktm-3"]["name"], PATHINFO_EXTENSION);

                        $size_foto_3   = $_FILES["foto-3"]["size"]; $size_ktm_3   = $_FILES["ktm-3"]["size"];
                        
                        // filename yang aman
                        $nama_foto_3 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_3["name"]); 
                        $nama_ktm_3  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_3["name"]);

                        // mencegah overwrite filename
                        $m=0; $n=0;
                        $parts_foto_3 = pathinfo($nama_foto_3); $parts_ktm_3 = pathinfo($nama_ktm_3);

                        while (file_exists(UPLOAD_DIR . $nama_foto_3)){
                            $m++;
                            $nama_foto_3 = $parts_foto_3["filename"] . "-" . $m . "." . $parts_foto_3["extension"];
                        }
                        while (file_exists(UPLOAD_DIR . $nama_ktm_3)){
                            $n++;
                            $nama_ktm_3 = $parts_ktm_3["filename"] . "-" . $n . "." . $parts_ktm_3["extension"];
                        }

                        $nama_foto_3 = "5-" . $parts_foto_3["filename"] . "." . $parts_foto_3["extension"];
                        $nama_ktm_3 = "6-" . $parts_ktm_3["filename"] . "." . $parts_ktm_3["extension"];

                        $fileType = exif_imagetype($foto_3["tmp_name"]) && exif_imagetype($ktm_3["tmp_name"]);

                        $allowed = array(IMAGETYPE_GIF, IMAGETYPE_JPEG, IMAGETYPE_PNG);

                        if (!in_array($fileType, $allowed)) {
                      
                            // file type is not permitted
                            echo '<div class="alert alert-warning"><center>File harus dalam bentuk gambar</center></div>';
                            exit;
                  
                        }else{

                            // upload file
                            $foto_sukses_3  = move_uploaded_file($foto_3["tmp_name"], UPLOAD_DIR . $nama_foto_3); 
                            $ktm_sukses_3   = move_uploaded_file($ktm_3["tmp_name"], UPLOAD_DIR . $nama_ktm_3);
                    

                            if (!$foto_sukses_3 && !$ktm_sukses_3){

                                echo '
                                <div class="alert alert-warning">
                                    <center>
                                        Mohon maaf atas ketidaknyamanan anda, <b>Unggah foto dan kartu identitas gagal</b>. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia.
                                    </center>
                                </div>';
                    
                            }else{

                                $insert2 = $conn->query("INSERT INTO data_peserta_singcomp (email, nomor, nama_peserta, posisi, nama_foto, size_foto, type_foto, nama_ktm, size_ktm, type_ktm)
                                    VALUES

                                    ('$email', 1, '$nama_peserta_3', '$posisi_3', '$nama_foto_3', '$size_foto_3', '$ext_foto_3', '$nama_ktm_3', '$size_ktm_3', '$ext_ktm_3')
                                    ");
                            }
                                    
                        }

                        chmod(UPLOAD_DIR . $nama_foto_3, 0644); chmod(UPLOAD_DIR . $nama_ktm_3, 0644);        
                    }
                    if (!empty(trim($nama_peserta_4)) && !empty(trim($posisi_4)) && !empty($_FILES["foto-4"]) && !empty($_FILES["ktm-4"])){
                    
                        $foto_4 = $_FILES["foto-4"];    $ktm_4 = $_FILES["ktm-4"];

                        $ext_foto_4 = pathinfo($_FILES["foto-4"]["name"], PATHINFO_EXTENSION);
                        $ext_ktm_4  = pathinfo($_FILES["ktm-4"]["name"], PATHINFO_EXTENSION);

                        $size_foto_4   = $_FILES["foto-4"]["size"]; $size_ktm_4   = $_FILES["ktm-4"]["size"];
                        
                        // filename yang aman
                        $nama_foto_4 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_4["name"]); 
                        $nama_ktm_4  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_4["name"]);

                        // mencegah overwrite filename
                        $o=0; $p=0;
                        $parts_foto_4 = pathinfo($nama_foto_4); $parts_ktm_4 = pathinfo($nama_ktm_4);

                        while (file_exists(UPLOAD_DIR . $nama_foto_4)){
                            $o++;
                            $nama_foto_4 = $parts_foto_4["filename"] . "-" . $o . "." . $parts_foto_4["extension"];
                        }
                        while (file_exists(UPLOAD_DIR . $nama_ktm_4)){
                            $p++;
                            $nama_ktm_4 = $parts_ktm_4["filename"] . "-" . $p . "." . $parts_ktm_4["extension"];
                        }

                        $nama_foto_4 = "7-" . $parts_foto_4["filename"] . "." . $parts_foto_4["extension"];
                        $nama_ktm_4 = "8-" . $parts_ktm_4["filename"] . "." . $parts_ktm_4["extension"];

                        $fileType = exif_imagetype($foto_4["tmp_name"]) && exif_imagetype($ktm_4["tmp_name"]);

                        $allowed = array(IMAGETYPE_GIF, IMAGETYPE_JPEG, IMAGETYPE_PNG);

                        if (!in_array($fileType, $allowed)) {
                      
                            // file type is not permitted
                            echo '<div class="alert alert-warning"><center>File harus dalam bentuk gambar</center></div>';
                            exit;
                  
                        }else{

                            // upload file
                            $foto_sukses_4  = move_uploaded_file($foto_4["tmp_name"], UPLOAD_DIR . $nama_foto_4); 
                            $ktm_sukses_4   = move_uploaded_file($ktm_4["tmp_name"], UPLOAD_DIR . $nama_ktm_4);
                    

                            if (!$foto_sukses_4 && !$ktm_sukses_4){

                                echo '
                                <div class="alert alert-warning">
                                    <center>
                                        Mohon maaf atas ketidaknyamanan anda, <b>Unggah foto dan kartu identitas gagal</b>. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia.
                                    </center>
                                </div>';
                    
                            }else{

                                $insert3 = $conn->query("INSERT INTO data_peserta_singcomp (email, nomor, nama_peserta, posisi, nama_foto, size_foto, type_foto, nama_ktm, size_ktm, type_ktm)
                                    VALUES

                                    ('$email', 2, '$nama_peserta_4', '$posisi_4', '$nama_foto_4', '$size_foto_4', '$ext_foto_4', '$nama_ktm_4', '$size_ktm_4', '$ext_ktm_4')
                                    ");
                            }
                                    
                        }

                        chmod(UPLOAD_DIR . $nama_foto_4, 0644); chmod(UPLOAD_DIR . $nama_ktm_4, 0644);        
                    }
                    if (!empty(trim($nama_peserta_5)) && !empty(trim($posisi_5)) && !empty($_FILES["foto-5"]) && !empty($_FILES["ktm-5"])){
                    
                        $foto_5 = $_FILES["foto-5"];    $ktm_5 = $_FILES["ktm-5"];

                        $ext_foto_5 = pathinfo($_FILES["foto-5"]["name"], PATHINFO_EXTENSION);
                        $ext_ktm_5  = pathinfo($_FILES["ktm-5"]["name"], PATHINFO_EXTENSION);

                        $size_foto_5   = $_FILES["foto-5"]["size"]; $size_ktm_5   = $_FILES["ktm-5"]["size"];
                        
                        // filename yang aman
                        $nama_foto_5 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_5["name"]); 
                        $nama_ktm_5  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_5["name"]);

                        // mencegah overwrite filename
                        $q=0; $r=0;
                        $parts_foto_5 = pathinfo($nama_foto_5); $parts_ktm_5 = pathinfo($nama_ktm_5);

                        while (file_exists(UPLOAD_DIR . $nama_foto_5)){
                            $q++;
                            $nama_foto_5 = $parts_foto_5["filename"] . "-" . $q . "." . $parts_foto_5["extension"];
                        }
                        while (file_exists(UPLOAD_DIR . $nama_ktm_5)){
                            $r++;
                            $nama_ktm_5 = $parts_ktm_5["filename"] . "-" . $r . "." . $parts_ktm_5["extension"];
                        }

                        $nama_foto_5 = "9-" . $parts_foto_5["filename"] . "." . $parts_foto_5["extension"];
                        $nama_ktm_5 = "10-" . $parts_ktm_5["filename"] . "." . $parts_ktm_5["extension"];

                        $fileType = exif_imagetype($foto_5["tmp_name"]) && exif_imagetype($ktm_5["tmp_name"]);

                        $allowed = array(IMAGETYPE_GIF, IMAGETYPE_JPEG, IMAGETYPE_PNG);

                        if (!in_array($fileType, $allowed)) {
                      
                            // file type is not permitted
                            echo '<div class="alert alert-warning"><center>File harus dalam bentuk gambar</center></div>';
                            exit;
                  
                        }else{

                            // upload file
                            $foto_sukses_5  = move_uploaded_file($foto_5["tmp_name"], UPLOAD_DIR . $nama_foto_5); 
                            $ktm_sukses_5   = move_uploaded_file($ktm_5["tmp_name"], UPLOAD_DIR . $nama_ktm_5);
                    

                            if (!$foto_sukses_5 && !$ktm_sukses_5){

                                echo '
                                <div class="alert alert-warning">
                                    <center>
                                        Mohon maaf atas ketidaknyamanan anda, <b>Unggah foto dan kartu identitas gagal</b>. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia.
                                    </center>
                                </div>';
                    
                            }else{

                                $insert4 = $conn->query("INSERT INTO data_peserta_singcomp (email, nomor, nama_peserta, posisi, nama_foto, size_foto, type_foto, nama_ktm, size_ktm, type_ktm)
                                    VALUES

                                    ('$email', 2, '$nama_peserta_5', '$posisi_5', '$nama_foto_5', '$size_foto_5', '$ext_foto_5', '$nama_ktm_5', '$size_ktm_5', '$ext_ktm_5')
                                    ");
                            }
                                    
                        }

                        chmod(UPLOAD_DIR . $nama_foto_5, 0644); chmod(UPLOAD_DIR . $nama_ktm_5, 0644);        
                    }
                    if (!empty(trim($nama_peserta_6)) && !empty(trim($posisi_6)) && !empty($_FILES["foto-6"]) && !empty($_FILES["ktm-6"])){
                    
                        $foto_6 = $_FILES["foto-6"];    $ktm_6 = $_FILES["ktm-6"];

                        $ext_foto_6 = pathinfo($_FILES["foto-6"]["name"], PATHINFO_EXTENSION);
                        $ext_ktm_6  = pathinfo($_FILES["ktm-6"]["name"], PATHINFO_EXTENSION);

                        $size_foto_6   = $_FILES["foto-6"]["size"]; $size_ktm_6   = $_FILES["ktm-6"]["size"];
                        
                        // filename yang aman
                        $nama_foto_6 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_6["name"]); 
                        $nama_ktm_6  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_6["name"]);

                        // mencegah overwrite filename
                        $s=0; $t=0;
                        $parts_foto_6 = pathinfo($nama_foto_6); $parts_ktm_6 = pathinfo($nama_ktm_6);

                        while (file_exists(UPLOAD_DIR . $nama_foto_6)){
                            $s++;
                            $nama_foto_6 = $parts_foto_6["filename"] . "-" . $s . "." . $parts_foto_6["extension"];
                        }
                        while (file_exists(UPLOAD_DIR . $nama_ktm_6)){
                            $t++;
                            $nama_ktm_6 = $parts_ktm_6["filename"] . "-" . $t . "." . $parts_ktm_6["extension"];
                        }

                        $nama_foto_6 = "11-" . $parts_foto_6["filename"] . "." . $parts_foto_6["extension"];
                        $nama_ktm_6 = "12-" . $parts_ktm_6["filename"] . "." . $parts_ktm_6["extension"];

                        $fileType = exif_imagetype($foto_6["tmp_name"]) && exif_imagetype($ktm_6["tmp_name"]);

                        $allowed = array(IMAGETYPE_GIF, IMAGETYPE_JPEG, IMAGETYPE_PNG);

                        if (!in_array($fileType, $allowed)) {
                      
                            // file type is not permitted
                            echo '<div class="alert alert-warning"><center>File harus dalam bentuk gambar</center></div>';
                            exit;
                  
                        }else{

                            // upload file
                            $foto_sukses_6  = move_uploaded_file($foto_6["tmp_name"], UPLOAD_DIR . $nama_foto_6); 
                            $ktm_sukses_6   = move_uploaded_file($ktm_6["tmp_name"], UPLOAD_DIR . $nama_ktm_6);
                    

                            if (!$foto_sukses_6 && !$ktm_sukses_6){

                                echo '
                                <div class="alert alert-warning">
                                    <center>
                                        Mohon maaf atas ketidaknyamanan anda, <b>Unggah foto dan kartu identitas gagal</b>. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia.
                                    </center>
                                </div>';
                    
                            }else{

                                $insert5 = $conn->query("INSERT INTO data_peserta_singcomp (email, nomor, nama_peserta, posisi, nama_foto, size_foto, type_foto, nama_ktm, size_ktm, type_ktm)
                                    VALUES

                                    ('$email', 2, '$nama_peserta_6', '$posisi_6', '$nama_foto_6', '$size_foto_6', '$ext_foto_6', '$nama_ktm_6', '$size_ktm_6', '$ext_ktm_6')
                                    ");
                            }
                                    
                        }

                        chmod(UPLOAD_DIR . $nama_foto_6, 0644); chmod(UPLOAD_DIR . $nama_ktm_6, 0644);        
                    }
                }

                if(!$insert1 && !$insert2 && !$insert3 && !$insert4 && !$insert5){

                    echo '
                    <div class="alert alert-danger">
                        <center>
                            Mohon maaf atas ketidaknyamanan anda. Terdapat pemain yang gagal didaftarkan. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia.
                        </center>
                    </div>';
                    exit;
                }else{
                     
                    echo '
                    <div class="alert alert-success">
                        <center>
                            Pendaftaran berhasil, data anda sudah kami simpan. Harap periksa email anda atau klik <a href="konfirmasi-pembayaran.php?nama_content=singcomp" class="alert-link">bit.ly/PembayaranSingcomp</a> untuk konfirmasi pembayaran.
                        </center>
                    </div>';

                    include 'functions/email_konfirmasi.php';

                    if(mail($email, $subject, $message, implode("\r\n", $headers))){
                    
                        include 'functions/email_konfirmasi_admin.php';

                    }
                }
            }

        }else{

            echo '
            <div class="alert alert-warning">
                <center>
                    Anda sudah menambahkan data pemain. Harap hubungi panitia jika anda ingin menambahkan lagi.
                </center>
            </div>';

        }

    }else{
        echo '
            <div class="alert alert-warning">
                <center>
                    Alamat email tidak terdaftar.
                </center>
            </div>';

    }

}

?>