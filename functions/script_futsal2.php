<?php

if($_POST['register']){
    
    define("UPLOAD_DIR", "panitia/foto_peserta/futsal/");

    $nama_pemain_7 = $conn->real_escape_string($_POST['nama-pemain-7']);
    $nama_pemain_8 = $conn->real_escape_string($_POST['nama-pemain-8']);
    $nama_pemain_9 = $conn->real_escape_string($_POST['nama-pemain-9']);
    $nama_pemain_10 = $conn->real_escape_string($_POST['nama-pemain-10']);
    $nama_pemain_11 = $conn->real_escape_string($_POST['nama-pemain-11']);
    $nama_pemain_12 = $conn->real_escape_string($_POST['nama-pemain-12']);
    
    $sql = $conn->query("SELECT * FROM futsal_parsial WHERE email='$email'");
    $sqlb = $conn->query("SELECT * FROM data_pemain_futsal WHERE email='$email'");

    if($sql->num_rows > 0){

        if($sqlb->num_rows == 6){

            if(!empty(trim($email))){

                $jml = 0;
                $allowed = array(IMAGETYPE_GIF, IMAGETYPE_JPEG, IMAGETYPE_PNG);

                if (!empty(trim($nama_pemain_7)) && !empty($_FILES["foto-7"]) && !empty($_FILES["ktm-7"])){
                
                    $foto_7 = $_FILES["foto-7"];    $ktm_7 = $_FILES["ktm-7"];

                    $ext_foto_7 = pathinfo($_FILES["foto-7"]["name"], PATHINFO_EXTENSION);
                    $ext_ktm_7  = pathinfo($_FILES["ktm-7"]["name"], PATHINFO_EXTENSION);

                    $size_foto_7   = $_FILES["foto-7"]["size"]; $size_ktm_7   = $_FILES["ktm-7"]["size"];
                    
                    // filename yang aman
                    $nama_foto_7 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_7["name"]); 
                    $nama_ktm_7  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_7["name"]);

                    // mencegah overwrite filename
                    $i=0; $j=0;
                    $parts_foto_7 = pathinfo($nama_foto_7); $parts_ktm_7 = pathinfo($nama_ktm_7);

                    while (file_exists(UPLOAD_DIR . $nama_foto_7)){
                        $i++;
                        $nama_foto_7 = $parts_foto_7["filename"] . "-" . $i . "." . $parts_foto_7["extension"];
                    }
                    while (file_exists(UPLOAD_DIR . $nama_ktm_7)){
                        $j++;
                        $nama_ktm_7 = $parts_ktm_7["filename"] . "-" . $j . "." . $parts_ktm_7["extension"];
                    }

                                    //Mencegah nama sama 
                
                    $nama_foto_7 = "13-" . $parts_foto_7["filename"] . "." . $parts_foto_7["extension"];
                    $nama_ktm_7  = "14-" . $parts_ktm_7["filename"] . "." . $parts_ktm_7["extension"];

                    $fileType_7 = exif_imagetype($foto_7["tmp_name"]) && exif_imagetype($ktm_7["tmp_name"]);

                    if (!in_array($fileType_7, $allowed)) {
                  
                        // file type is not permitted
                        $bukan_gambar_7 = '7, ';
              
                    }else{

                        // upload file
                        $foto_sukses_7  = move_uploaded_file($foto_7["tmp_name"], UPLOAD_DIR . $nama_foto_7); 
                        $ktm_sukses_7   = move_uploaded_file($ktm_7["tmp_name"], UPLOAD_DIR . $nama_ktm_7);
                

                        if (!$foto_sukses_7 && !$ktm_sukses_7){

                            $upload_gagal_7 = '7, '; 
                
                        }else{

                            $insert1 = $conn->query("INSERT INTO data_pemain_futsal (email, nomor, nama_pemain, nama_foto, size_foto, type_foto, nama_ktm, size_ktm, type_ktm)
                                VALUES

                                ('$email', 2, '$nama_pemain_7', '$nama_foto_7', '$size_foto_7', '$ext_foto_7', '$nama_ktm_7', '$size_ktm_7', '$ext_ktm_7')
                                ");
                        
                            if(!$insert1){

                                $gagal_daftar_7 = '7, ';
                            }else{
                                $jml = $jml + 1;
                                $sukses_daftar_7 = '7, ';
                            }      
                        }

                    }

                    chmod(UPLOAD_DIR . $nama_foto_7, 0644); chmod(UPLOAD_DIR . $nama_ktm_7, 0644);        
                }

                if (!empty(trim($nama_pemain_8)) && !empty($_FILES["foto-8"]) && !empty($_FILES["ktm-8"])){
                
                    $foto_8 = $_FILES["foto-8"];    $ktm_8 = $_FILES["ktm-8"];

                    $ext_foto_8 = pathinfo($_FILES["foto-8"]["name"], PATHINFO_EXTENSION);
                    $ext_ktm_8  = pathinfo($_FILES["ktm-8"]["name"], PATHINFO_EXTENSION);

                    $size_foto_8   = $_FILES["foto-8"]["size"]; $size_ktm_8   = $_FILES["ktm-8"]["size"];
                    
                    // filename yang aman
                    $nama_foto_8 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_8["name"]); 
                    $nama_ktm_8  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_8["name"]);

                    // mencegah overwrite filename
                    $k=0; $l=0;
                    $parts_foto_8 = pathinfo($nama_foto_8); $parts_ktm_8 = pathinfo($nama_ktm_8);

                    while (file_exists(UPLOAD_DIR . $nama_foto_8)){
                        $k++;
                        $nama_foto_8 = $parts_foto_8["filename"] . "-" . $k . "." . $parts_foto_8["extension"];
                    }
                    while (file_exists(UPLOAD_DIR . $nama_ktm_8)){
                        $l++;
                        $nama_ktm_8 = $parts_ktm_8["filename"] . "-" . $l . "." . $parts_ktm_8["extension"];
                    }

                    $nama_foto_8 = "15-" . $parts_foto_8["filename"] . "." . $parts_foto_8["extension"];
                    $nama_ktm_8  = "16-" . $parts_ktm_8["filename"] . "." . $parts_ktm_8["extension"];

                    $fileType_8 = exif_imagetype($foto_8["tmp_name"]) && exif_imagetype($ktm_8["tmp_name"]);

                    if (!in_array($fileType_8, $allowed)) {
                  
                        // file type is not permitted
                        $bukan_gambar_8 = '8, ';
              
                    }else{

                        // upload file
                        $foto_sukses_8  = move_uploaded_file($foto_8["tmp_name"], UPLOAD_DIR . $nama_foto_8); 
                        $ktm_sukses_8   = move_uploaded_file($ktm_8["tmp_name"], UPLOAD_DIR . $nama_ktm_8);
                

                        if (!$foto_sukses_8 && !$ktm_sukses_8){

                            $upload_gagal_8 = '8, ';
                        }else{

                            $insert2 = $conn->query("INSERT INTO data_pemain_futsal (email, nomor, nama_pemain, nama_foto, size_foto, type_foto, nama_ktm, size_ktm, type_ktm)
                                VALUES

                                ('$email', 2, '$nama_pemain_8', '$nama_foto_8', '$size_foto_8', '$ext_foto_8', '$nama_ktm_8', '$size_ktm_8', '$ext_ktm_8')
                                ");

                            if(!$insert2){

                                $gagal_daftar_8 = '8, ';
                            }else{

                                $jml = $jml + 1;
                                $sukses_daftar_8 = '8, ';                                
                            }
                        }
                    }

                    chmod(UPLOAD_DIR . $nama_foto_8, 0644); chmod(UPLOAD_DIR . $nama_ktm_8, 0644);        
                }

                if (!empty(trim($nama_pemain_9)) && !empty($_FILES["foto-9"]) && !empty($_FILES["ktm-9"])){
                
                    $foto_9 = $_FILES["foto-9"];    $ktm_9 = $_FILES["ktm-9"];

                    $ext_foto_9 = pathinfo($_FILES["foto-9"]["name"], PATHINFO_EXTENSION);
                    $ext_ktm_9  = pathinfo($_FILES["ktm-9"]["name"], PATHINFO_EXTENSION);

                    $size_foto_9   = $_FILES["foto-9"]["size"]; $size_ktm_9   = $_FILES["ktm-9"]["size"];
                    
                    // filename yang aman
                    $nama_foto_9 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_9["name"]); 
                    $nama_ktm_9  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_9["name"]);

                    // mencegah overwrite filename
                    $i=0; $j=0;
                    $parts_foto_9 = pathinfo($nama_foto_9); $parts_ktm_9 = pathinfo($nama_ktm_9);

                    while (file_exists(UPLOAD_DIR . $nama_foto_9)){
                        $i++;
                        $nama_foto_9 = $parts_foto_9["filename"] . "-" . $i . "." . $parts_foto_9["extension"];
                    }
                    while (file_exists(UPLOAD_DIR . $nama_ktm_9)){
                        $j++;
                        $nama_ktm_9 = $parts_ktm_9["filename"] . "-" . $j . "." . $parts_ktm_9["extension"];
                    }

                    $nama_foto_9 = "17-" . $parts_foto_9["filename"] . "." . $parts_foto_9["extension"];
                    $nama_ktm_9  = "18-" . $parts_ktm_9["filename"] . "." . $parts_ktm_9["extension"];

                    $fileType_9 = exif_imagetype($foto_9["tmp_name"]) && exif_imagetype($ktm_9["tmp_name"]);

                    if (!in_array($fileType_9, $allowed)) {
                  
                        // file type is not permitted
                        $bukan_gambar_9 = '9, ';
              
                    }else{

                        // upload file
                        $foto_sukses_9  = move_uploaded_file($foto_9["tmp_name"], UPLOAD_DIR . $nama_foto_9); 
                        $ktm_sukses_9   = move_uploaded_file($ktm_9["tmp_name"], UPLOAD_DIR . $nama_ktm_9);
                

                        if (!$foto_sukses_9 && !$ktm_sukses_9){

                            $gagal_upload_9 = '9, ';
                        }else{

                            $insert3 = $conn->query("INSERT INTO data_pemain_futsal (email, nomor, nama_pemain, nama_foto, size_foto, type_foto, nama_ktm, size_ktm, type_ktm)
                                VALUES

                                ('$email', 3, '$nama_pemain_9', '$nama_foto_9', '$size_foto_9', '$ext_foto_9', '$nama_ktm_9', '$size_ktm_9', '$ext_ktm_9')
                                ");

                            if(!$insert3){

                                $gagal_daftar_9 = '9, ';
                            }else{

                                $jml = $jml + 1;
                                $sukses_daftar_9 = '9, ';                                
                            }                    

                        }
                    }

                    chmod(UPLOAD_DIR . $nama_foto_9, 0644); chmod(UPLOAD_DIR . $nama_ktm_9, 0644);        
                }

                if (!empty(trim($nama_pemain_10)) && !empty($_FILES["foto-10"]) && !empty($_FILES["ktm-10"])){
                
                    $foto_10 = $_FILES["foto-10"];    $ktm_10 = $_FILES["ktm-10"];

                    $ext_foto_10 = pathinfo($_FILES["foto-10"]["name"], PATHINFO_EXTENSION);
                    $ext_ktm_10  = pathinfo($_FILES["ktm-10"]["name"], PATHINFO_EXTENSION);

                    $size_foto_10   = $_FILES["foto-10"]["size"]; $size_ktm_10   = $_FILES["ktm-10"]["size"];
                    
                    // filename yang aman
                    $nama_foto_10 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_10["name"]); 
                    $nama_ktm_10  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_10["name"]);

                    // mencegah overwrite filename
                    $b=0; $a=0;
                    $parts_foto_10 = pathinfo($nama_foto_10); $parts_ktm_10 = pathinfo($nama_ktm_10);

                    while (file_exists(UPLOAD_DIR . $nama_foto_10)){
                        $a++;
                        $nama_foto_10 = $parts_foto_10["filename"] . "-" . $a . "." . $parts_foto_10["extension"];
                    }
                    while (file_exists(UPLOAD_DIR . $nama_ktm_10)){
                        $b++;
                        $nama_ktm_10 = $parts_ktm_10["filename"] . "-" . $b . "." . $parts_ktm_10["extension"];
                    }

                    $nama_foto_10 = "19-" . $parts_foto_10["filename"] . "." . $parts_foto_10["extension"];
                    $nama_ktm_10  = "20-" . $parts_ktm_10["filename"] . "." . $parts_ktm_10["extension"];

                    $fileType_10 = exif_imagetype($foto_10["tmp_name"]) && exif_imagetype($ktm_10["tmp_name"]);

                    if (!in_array($fileType_10, $allowed)) {
                  
                        // file type is not permitted
                        $bukan_gambar_10 = '10, ';

                    }else{

                        // upload file
                        $foto_sukses_10  = move_uploaded_file($foto_10["tmp_name"], UPLOAD_DIR . $nama_foto_10); 
                        $ktm_sukses_10   = move_uploaded_file($ktm_10["tmp_name"], UPLOAD_DIR . $nama_ktm_10);
                

                        if (!$foto_sukses_10 && !$ktm_sukses_10){

                            $gagal_upload_10 = '10, ';
                        }else{

                            $insert4 = $conn->query("INSERT INTO data_pemain_futsal (email, nomor, nama_pemain, nama_foto, size_foto, type_foto, nama_ktm, size_ktm, type_ktm)
                                VALUES

                                ('$email', 3, '$nama_pemain_10', '$nama_foto_10', '$size_foto_10', '$ext_foto_10', '$nama_ktm_10', '$size_ktm_10', '$ext_ktm_10')
                                ");
                        }
                            if(!$insert4){

                                $gagal_daftar_10 = '10, ';
                            }else{
                                $jml = $jml + 1;
                                $sukses_daftar_10 = '10, ';                                
                            }
                    }

                    chmod(UPLOAD_DIR . $nama_foto_10, 0644); chmod(UPLOAD_DIR . $nama_ktm_10, 0644);        
                }

                if (!empty(trim($nama_pemain_11)) && !empty($_FILES["foto-11"]) && !empty($_FILES["ktm-11"])){
                
                    $foto_11 = $_FILES["foto-11"];    $ktm_11 = $_FILES["ktm-11"];

                    $ext_foto_11 = pathinfo($_FILES["foto-11"]["name"], PATHINFO_EXTENSION);
                    $ext_ktm_11  = pathinfo($_FILES["ktm-11"]["name"], PATHINFO_EXTENSION);

                    $size_foto_11   = $_FILES["foto-11"]["size"]; $size_ktm_11   = $_FILES["ktm-11"]["size"];
                    
                    // filename yang aman
                    $nama_foto_11 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_11["name"]); 
                    $nama_ktm_11  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_11["name"]);

                    // mencegah overwrite filename
                    $s=0; $r=0;
                    $parts_foto_11 = pathinfo($nama_foto_11); $parts_ktm_11 = pathinfo($nama_ktm_11);

                    while (file_exists(UPLOAD_DIR . $nama_foto_11)){
                        $s++;
                        $nama_foto_11 = $parts_foto_11["filename"] . "-" . $s . "." . $parts_foto_11["extension"];
                    }
                    while (file_exists(UPLOAD_DIR . $nama_ktm_11)){
                        $r++;
                        $nama_ktm_11 = $parts_ktm_11["filename"] . "-" . $r . "." . $parts_ktm_11["extension"];
                    }

                    $nama_foto_11 = "21-" . $parts_foto_11["filename"] . "." . $parts_foto_11["extension"];
                    $nama_ktm_11  = "22-" . $parts_ktm_11["filename"] . "." . $parts_ktm_11["extension"];

                    $fileType_11 = exif_imagetype($foto_11["tmp_name"]) && exif_imagetype($ktm_11["tmp_name"]);

                    if (!in_array($fileType_11, $allowed)) {
                  
                        // file type is not permitted
                        $bukan_gambar_11 = '11, ';

                    }else{

                        // upload file
                        $foto_sukses_11  = move_uploaded_file($foto_11["tmp_name"], UPLOAD_DIR . $nama_foto_11); 
                        $ktm_sukses_11   = move_uploaded_file($ktm_11["tmp_name"], UPLOAD_DIR . $nama_ktm_11);
                

                        if (!$foto_sukses_11 && !$ktm_sukses_11){

                            $gagal_upload_11 = '11, ';
                        }else{

                            $insert5 = $conn->query("INSERT INTO data_pemain_futsal (email, nomor, nama_pemain, nama_foto, size_foto, type_foto, nama_ktm, size_ktm, type_ktm)
                                VALUES

                                ('$email', 3, '$nama_pemain_11', '$nama_foto_11', '$size_foto_11', '$ext_foto_11', '$nama_ktm_11', '$size_ktm_11', '$ext_ktm_11')
                                ");
                            if(!$insert5){

                                $gagal_daftar_11 = '11, ';
                            }else{
                                $jml = $jml + 1;
                                $sukses_daftar_11 = '11, ';                                
                            }
                        }
                    }

                    chmod(UPLOAD_DIR . $nama_foto_11, 0644); chmod(UPLOAD_DIR . $nama_ktm_11, 0644);        
                }

                if (!empty(trim($nama_pemain_12)) && !empty($_FILES["foto-12"]) && !empty($_FILES["ktm-12"])){
                
                    $foto_12 = $_FILES["foto-12"];    $ktm_12 = $_FILES["ktm-12"];

                    $ext_foto_12 = pathinfo($_FILES["foto-12"]["name"], PATHINFO_EXTENSION);
                    $ext_ktm_12  = pathinfo($_FILES["ktm-12"]["name"], PATHINFO_EXTENSION);

                    $size_foto_12   = $_FILES["foto-12"]["size"]; $size_ktm_12   = $_FILES["ktm-12"]["size"];
                    
                    // filename yang aman
                    $nama_foto_12 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_12["name"]); 
                    $nama_ktm_12  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_12["name"]);

                    // mencegah overwrite filename
                    $p=0; $q=0;
                    $parts_foto_12 = pathinfo($nama_foto_12); $parts_ktm_12 = pathinfo($nama_ktm_12);

                    while (file_exists(UPLOAD_DIR . $nama_foto_12)){
                        $p++;
                        $nama_foto_12 = $parts_foto_12["filename"] . "-" . $p . "." . $parts_foto_12["extension"];
                    }
                    while (file_exists(UPLOAD_DIR . $nama_ktm_12)){
                        $q++;
                        $nama_ktm_12 = $parts_ktm_12["filename"] . "-" . $q . "." . $parts_ktm_12["extension"];
                    }

                    $nama_foto_12 = "23-" . $parts_foto_12["filename"] . "." . $parts_foto_12["extension"];
                    $nama_ktm_12  = "24-" . $parts_ktm_12["filename"] . "." . $parts_ktm_12["extension"];

                    $fileType_12 = exif_imagetype($foto_12["tmp_name"]) && exif_imagetype($ktm_12["tmp_name"]);

                    if (!in_array($fileType_12, $allowed)) {
                  
                        // file type is not permitted
                        $bukan_gambar_12 = '12 ';
              
                    }else{

                        // upload file
                        $foto_sukses_12  = move_uploaded_file($foto_12["tmp_name"], UPLOAD_DIR . $nama_foto_12); 
                        $ktm_sukses_12   = move_uploaded_file($ktm_12["tmp_name"], UPLOAD_DIR . $nama_ktm_12);
                

                        if (!$foto_sukses_12 && !$ktm_sukses_12){

                            $upload_gagal_12 = '12 ';                
                        }else{

                            $insert6 = $conn->query("INSERT INTO data_pemain_futsal (email, nomor, nama_pemain, nama_foto, size_foto, type_foto, nama_ktm, size_ktm, type_ktm)
                                VALUES

                                ('$email', 3, '$nama_pemain_12', '$nama_foto_12', '$size_foto_12', '$ext_foto_12', '$nama_ktm_12', '$size_ktm_12', '$ext_ktm_12')
                                ");
                            if(!$insert6){

                                $gagal_daftar_12 = '12 ';
                            }else{
                                $jml = $jml + 1;
                                $sukses_daftar_12 = '12 ';                                
                            }

                        }
                                
                    }

                    chmod(UPLOAD_DIR . $nama_foto_12, 0644); chmod(UPLOAD_DIR . $nama_ktm_12, 0644);        
                }

                if($insert1 OR $insert2 OR $insert3 OR $insert4 OR $insert5 OR $insert6){
                    
                    echo '
                    <div class="alert alert-success">
                        <center>
                            Anda berhasil mendaftarkan <b>'.$jml.' pemain</b>. Harap periksa email anda atau klik <a href="konfirmasi-pembayaran.php?nama_content=futsal" class="alert-link">bit.ly/PembayaranFutsal</a> untuk konfirmasi pembayaran.
                        </center>
                    </div>';



                }/*else{
                     
                    echo '
                    <div class="alert alert-danger">
                        <center>
                            Mohon maaf atas ketidaknyamanan anda. Pemain '.$gagal_daftar_7.$gagal_daftar_8.$gagal_daftar_9.$gagal_daftar_10.$gagal_daftar_11.$gagal_daftar_12.'yang gagal didaftarkan. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia.
                        </center>
                    </div>';
                }

                if (!in_array($fileType_7, $allowed) OR !in_array($fileType_8, $allowed) OR !in_array($fileType_9, $allowed) OR !in_array($fileType_10, $allowed) OR !in_array($fileType_11, $allowed) OR !in_array($fileType_12, $allowed)) {
                    echo '
                    <div class="alert alert-danger">
                        <center>
                            Mohon maaf atas ketidaknyamanan anda. Data pemain '.$bukan_gambar_7.$bukan_gambar_8.$bukan_gambar_9.$bukan_gambar_10.$bukan_gambar_11.$bukan_gambar_12.' tidak boleh kosong dan harus gambar.
                        </center>
                    </div>';
                }*/
            }

/*            if ($foto_7["error"] !== UPLOAD_ERR_OK && $ktm_7["error"] !== UPLOAD_ERR_OK) {
            
                echo '
                <div class="alert alert-warning">
                    <center>
                        Terdapat kesalahan pada file nomor 7 atau ukuran file terlalu besar. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia
                    </center>
                </div>';
                exit;
            }*/

        }elseif ($sqlb->num_rows < 6) {
            
            echo '
            <div class="alert alert-warning">
                <center>
                    Anda belum pernah mengisi data pemain sebelumnya. Harap isi terlebih dahulu data pemain ke 1-6.
                </center>
            </div>';
        
        }else{

            if($sqlb->num_rows == 12){
            echo '
            <div class="alert alert-warning">
                <center>
                    Anda hanya dapat mendaftarkan 12 pemain.
                </center>
            </div>';

            }

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