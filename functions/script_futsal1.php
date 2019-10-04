<?php

if($_POST['register']){
    
    define("UPLOAD_DIR", "panitia/foto_peserta/futsal/");

    $nama_pemain_1 = $conn->real_escape_string($_POST['nama-pemain-1']);
    $nama_pemain_2 = $conn->real_escape_string($_POST['nama-pemain-2']);
    $nama_pemain_3 = $conn->real_escape_string($_POST['nama-pemain-3']);
    $nama_pemain_4 = $conn->real_escape_string($_POST['nama-pemain-4']);
    $nama_pemain_5 = $conn->real_escape_string($_POST['nama-pemain-5']);
    $nama_pemain_6 = $conn->real_escape_string($_POST['nama-pemain-6']);
    
    $tgl    = date("Y-m-d");

    $empty =    empty(trim($email)) OR 
                empty(trim($nama_pemain_1)) OR  
                empty(trim($nama_pemain_2)) OR
                empty(trim($nama_pemain_3)) OR
                empty(trim($nama_pemain_4)) OR
                empty(trim($nama_pemain_5)) OR
                empty(trim($nama_pemain_6)) OR
                empty($_FILES["foto-1"]) OR empty($_FILES["ktm-1"]) OR
                empty($_FILES["foto-2"]) OR empty($_FILES["ktm-2"]) OR
                empty($_FILES["foto-3"]) OR empty($_FILES["ktm-3"]) OR
                empty($_FILES["foto-4"]) OR empty($_FILES["ktm-4"]) OR
                empty($_FILES["foto-5"]) OR empty($_FILES["ktm-5"]) OR
                empty($_FILES["foto-6"]) OR empty($_FILES["ktm-6"]);

    if ($empty) {

        echo '
            <div class="alert alert-warning">
                <center>
                    Nama, foto dan kartu identitas pemain harus diisi.
                </center>
            </div>';

    }else{

        $sql = $conn->query("SELECT * FROM futsal_parsial WHERE email='$email'");
        $sqlb = $conn->query("SELECT * FROM data_pemain_futsal WHERE email='$email'");
        $row = $sql->fetch_assoc();
        
        $nama = $row['official'];
        $nama_team = $row['nama_team'];
        $kategori = $row['kategori'];
        
       	$text = 'Terimakasih telah mendaftarkan team anda untuk mengikuti Futsal Competition Parsial 2018. Data dengan nama team <b>'.$nama_team.'</b> sudah kami simpan. Silahkan tekan tombol <b>Konfirmasi</b> di bawah ini untuk mengirim bukti pembayaran.';
    	$text_a = 'Team dengan nama <b>'.$nama_team.'</b> telah mengisi formulir pendaftaran futsal. Silahkan cek halaman admin untuk melihat datanya.';
    	$url_tombol = 'http://www.parsial.cf/konfirmasi-pembayaran.php?nama_content=futsal';
    	
    	if($kategori == 'IKAHIMATIKA'){
    	
    		$pj_content = 1.1;
    	
    	}elseif ($kategori == 'Mahasiswa Umum') {
    		
    		$pj_content = 1.2;
    	}

        if($sql->num_rows > 0){

            if($sqlb->num_rows != 0){

                echo '
                <div class="alert alert-warning">
                    <center>
                        Anda sudah mengisi data pemain. Harap hubungi panitia jika ingin mengisi ulang.
                    </center>
                </div>';

            }else{
                
                $foto_1 = $_FILES["foto-1"];    $ktm_1 = $_FILES["ktm-1"];
                $foto_2 = $_FILES["foto-2"];    $ktm_2 = $_FILES["ktm-2"];
                $foto_3 = $_FILES["foto-3"];    $ktm_3 = $_FILES["ktm-3"];
                $foto_4 = $_FILES["foto-4"];    $ktm_4 = $_FILES["ktm-4"];
                $foto_5 = $_FILES["foto-5"];    $ktm_5 = $_FILES["ktm-5"];
                $foto_6 = $_FILES["foto-6"];    $ktm_6 = $_FILES["ktm-6"];

                $ext_foto_1 = pathinfo($_FILES["foto-1"]["name"], PATHINFO_EXTENSION);
                $ext_ktm_1  = pathinfo($_FILES["ktm-1"]["name"], PATHINFO_EXTENSION);
                $ext_foto_2 = pathinfo($_FILES["foto-2"]["name"], PATHINFO_EXTENSION);
                $ext_ktm_2  = pathinfo($_FILES["ktm-2"]["name"], PATHINFO_EXTENSION);
                $ext_foto_3 = pathinfo($_FILES["foto-3"]["name"], PATHINFO_EXTENSION);
                $ext_ktm_3  = pathinfo($_FILES["ktm-3"]["name"], PATHINFO_EXTENSION);
                $ext_foto_4 = pathinfo($_FILES["foto-4"]["name"], PATHINFO_EXTENSION);
                $ext_ktm_4  = pathinfo($_FILES["ktm-4"]["name"], PATHINFO_EXTENSION);
                $ext_foto_5 = pathinfo($_FILES["foto-5"]["name"], PATHINFO_EXTENSION);
                $ext_ktm_5  = pathinfo($_FILES["ktm-5"]["name"], PATHINFO_EXTENSION);
                $ext_foto_6 = pathinfo($_FILES["foto-6"]["name"], PATHINFO_EXTENSION);
                $ext_ktm_6  = pathinfo($_FILES["ktm-6"]["name"], PATHINFO_EXTENSION);

                $size_foto_1   = $_FILES["foto-1"]["size"]; $size_ktm_1   = $_FILES["ktm-1"]["size"];
                $size_foto_2   = $_FILES["foto-2"]["size"]; $size_ktm_2   = $_FILES["ktm-2"]["size"];
                $size_foto_3   = $_FILES["foto-3"]["size"]; $size_ktm_3   = $_FILES["ktm-3"]["size"];
                $size_foto_4   = $_FILES["foto-4"]["size"]; $size_ktm_4   = $_FILES["ktm-4"]["size"];
                $size_foto_5   = $_FILES["foto-5"]["size"]; $size_ktm_5   = $_FILES["ktm-5"]["size"];
                $size_foto_6   = $_FILES["foto-6"]["size"]; $size_ktm_6   = $_FILES["ktm-6"]["size"];

                $ada_error =    $foto_1["error"] !== UPLOAD_ERR_OK && $ktm_1["error"] !== UPLOAD_ERR_OK &&
                                $foto_2["error"] !== UPLOAD_ERR_OK && $ktm_2["error"] !== UPLOAD_ERR_OK &&
                                $foto_3["error"] !== UPLOAD_ERR_OK && $ktm_3["error"] !== UPLOAD_ERR_OK &&
                                $foto_4["error"] !== UPLOAD_ERR_OK && $ktm_4["error"] !== UPLOAD_ERR_OK &&
                                $foto_5["error"] !== UPLOAD_ERR_OK && $ktm_5["error"] !== UPLOAD_ERR_OK &&
                                $foto_6["error"] !== UPLOAD_ERR_OK && $ktm_6["error"] !== UPLOAD_ERR_OK;

                if ($ada_error) {
                
                    echo '
                    <div class="alert alert-warning">
                        <center>
                            Terdapat kesalahan pada file atau ukuran file terlalu besar. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia
                        </center>
                    </div>';
                    exit;
                }                
                
                // filename yang aman
                $nama_foto_1 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_1["name"]); 
                $nama_ktm_1  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_1["name"]);
                $nama_foto_2 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_2["name"]); 
                $nama_ktm_2  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_2["name"]);
                $nama_foto_3 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_3["name"]); 
                $nama_ktm_3  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_3["name"]);
                $nama_foto_4 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_4["name"]); 
                $nama_ktm_4  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_4["name"]);
                $nama_foto_5 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_5["name"]); 
                $nama_ktm_5  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_5["name"]);
                $nama_foto_6 = preg_replace("/[^A-Z0-9._-]/i", "_", $foto_6["name"]); 
                $nama_ktm_6  = preg_replace("/[^A-Z0-9._-]/i", "_", $ktm_6["name"]);

                // mencegah overwrite filename
                $i=0; $j=0; $k=0; $l=0; $m=0; $n=0; $o=0; $p=0; $q=0; $r=0; $s=0; $t=0; 
                $parts_foto_1 = pathinfo($nama_foto_1); $parts_ktm_1 = pathinfo($nama_ktm_1);
                $parts_foto_2 = pathinfo($nama_foto_2); $parts_ktm_2 = pathinfo($nama_ktm_2);
                $parts_foto_3 = pathinfo($nama_foto_3); $parts_ktm_3 = pathinfo($nama_ktm_3);
                $parts_foto_4 = pathinfo($nama_foto_4); $parts_ktm_4 = pathinfo($nama_ktm_4);
                $parts_foto_5 = pathinfo($nama_foto_5); $parts_ktm_5 = pathinfo($nama_ktm_5);
                $parts_foto_6 = pathinfo($nama_foto_6); $parts_ktm_6 = pathinfo($nama_ktm_6);

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
                while (file_exists(UPLOAD_DIR . $nama_foto_3)){
                    $m++;
                    $nama_foto_3 = $parts_foto_3["filename"] . "-" . $m . "." . $parts_foto_3["extension"];
                }
                while (file_exists(UPLOAD_DIR . $nama_ktm_3)){
                    $n++;
                    $nama_ktm_3 = $parts_ktm_3["filename"] . "-" . $n . "." . $parts_ktm_3["extension"];
                }
                while (file_exists(UPLOAD_DIR . $nama_foto_4)){
                    $o++;
                    $nama_foto_4 = $parts_foto_4["filename"] . "-" . $o . "." . $parts_foto_4["extension"];
                }
                while (file_exists(UPLOAD_DIR . $nama_ktm_4)){
                    $p++;
                    $nama_ktm_4 = $parts_ktm_4["filename"] . "-" . $p . "." . $parts_ktm_4["extension"];
                }
                while (file_exists(UPLOAD_DIR . $nama_foto_5)){
                    $q++;
                    $nama_foto_5 = $parts_foto_5["filename"] . "-" . $q . "." . $parts_foto_5["extension"];
                }
                while (file_exists(UPLOAD_DIR . $nama_ktm_5)){
                    $r++;
                    $nama_ktm_5 = $parts_ktm_5["filename"] . "-" . $r . "." . $parts_ktm_5["extension"];
                }
                while (file_exists(UPLOAD_DIR . $nama_foto_6)){
                    $s++;
                    $nama_foto_6 = $parts_foto_6["filename"] . "-" . $s . "." . $parts_foto_6["extension"];
                }
                while (file_exists(UPLOAD_DIR . $nama_ktm_6)){
                    $t++;
                    $nama_ktm_6 = $parts_ktm_6["filename"] . "-" . $t . "." . $parts_ktm_6["extension"];
                }

                //Mencegah nama sama 
                
                    $nama_foto_1 = "1-" . $parts_foto_1["filename"] . "." . $parts_foto_1["extension"];
                    $nama_ktm_1  = "2-" . $parts_ktm_1["filename"] . "." . $parts_ktm_1["extension"];
                    $nama_foto_2 = "3-" . $parts_foto_2["filename"] . "." . $parts_foto_2["extension"];
                    $nama_ktm_2  = "4-" . $parts_ktm_2["filename"] . "." . $parts_ktm_2["extension"];
                    $nama_foto_3 = "5-" . $parts_foto_3["filename"] . "." . $parts_foto_3["extension"];
                    $nama_ktm_3  = "6-" . $parts_ktm_3["filename"] . "." . $parts_ktm_3["extension"];
                    $nama_foto_4 = "7-" . $parts_foto_4["filename"] . "." . $parts_foto_4["extension"];
                    $nama_ktm_4  = "8-" . $parts_ktm_4["filename"] . "." . $parts_ktm_4["extension"];
                    $nama_foto_5 = "9-" . $parts_foto_5["filename"] . "." . $parts_foto_5["extension"];
                    $nama_ktm_5  = "10-" . $parts_ktm_5["filename"] . "." . $parts_ktm_5["extension"];
                    $nama_foto_6 = "11-" . $parts_foto_6["filename"] . "." . $parts_foto_6["extension"];
                    $nama_ktm_6  = "12-" . $parts_ktm_6["filename"] . "." . $parts_ktm_6["extension"];

                $fileType = exif_imagetype($foto_1["tmp_name"]) && exif_imagetype($ktm_1["tmp_name"]) &&
                            exif_imagetype($foto_2["tmp_name"]) && exif_imagetype($ktm_2["tmp_name"]) &&
                            exif_imagetype($foto_3["tmp_name"]) && exif_imagetype($ktm_3["tmp_name"]) &&
                            exif_imagetype($foto_4["tmp_name"]) && exif_imagetype($ktm_4["tmp_name"]) &&
                            exif_imagetype($foto_5["tmp_name"]) && exif_imagetype($ktm_5["tmp_name"]) &&
                            exif_imagetype($foto_6["tmp_name"]) && exif_imagetype($ktm_6["tmp_name"]);

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
                    $foto_sukses_3  = move_uploaded_file($foto_3["tmp_name"], UPLOAD_DIR . $nama_foto_3); 
                    $ktm_sukses_3   = move_uploaded_file($ktm_3["tmp_name"], UPLOAD_DIR . $nama_ktm_3);
                    $foto_sukses_4  = move_uploaded_file($foto_4["tmp_name"], UPLOAD_DIR . $nama_foto_4); 
                    $ktm_sukses_4   = move_uploaded_file($ktm_4["tmp_name"], UPLOAD_DIR . $nama_ktm_4);
                    $foto_sukses_5  = move_uploaded_file($foto_5["tmp_name"], UPLOAD_DIR . $nama_foto_5); 
                    $ktm_sukses_5   = move_uploaded_file($ktm_5["tmp_name"], UPLOAD_DIR . $nama_ktm_5);
                    $foto_sukses_6  = move_uploaded_file($foto_6["tmp_name"], UPLOAD_DIR . $nama_foto_6); 
                    $ktm_sukses_6   = move_uploaded_file($ktm_6["tmp_name"], UPLOAD_DIR . $nama_ktm_6);            
            

                    if (!$foto_sukses_1 && !$foto_sukses_2 && !$foto_sukses_3 && !$foto_sukses_4 && !$foto_sukses_5 && !$foto_sukses_6 && !$ktm_sukses_1 && !$ktm_sukses_2 && !$ktm_sukses_3 && !$ktm_sukses_4 && !$ktm_sukses_5 && !$ktm_sukses_6){

                        echo '
                        <div class="alert alert-warning">
                            <center>
                                Mohon maaf atas ketidaknyamanan anda, <b>Unggah foto dan kartu identitas gagal</b>. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia.
                            </center>
                        </div>';
            
                    }else{

                        $insert = $conn->query("INSERT INTO data_pemain_futsal (email, nomor, nama_pemain, nama_foto, size_foto, type_foto, nama_ktm, size_ktm, type_ktm)
                            VALUES

                            ('$email', 1, '$nama_pemain_1', '$nama_foto_1', '$size_foto_1', '$ext_foto_1', '$nama_ktm_1', '$size_ktm_1', '$ext_ktm_1'), 
                            ('$email', 1, '$nama_pemain_2', '$nama_foto_2', '$size_foto_2', '$ext_foto_2', '$nama_ktm_2', '$size_ktm_2', '$ext_ktm_2'), 
                            ('$email', 1, '$nama_pemain_3', '$nama_foto_3', '$size_foto_3', '$ext_foto_3', '$nama_ktm_3', '$size_ktm_3', '$ext_ktm_3'), 
                            ('$email', 1, '$nama_pemain_4', '$nama_foto_4', '$size_foto_4', '$ext_foto_4', '$nama_ktm_4', '$size_ktm_4', '$ext_ktm_4'), 
                            ('$email', 2, '$nama_pemain_5', '$nama_foto_5', '$size_foto_5', '$ext_foto_5', '$nama_ktm_5', '$size_ktm_5', '$ext_ktm_5'), 
                            ('$email', 2, '$nama_pemain_6', '$nama_foto_6', '$size_foto_6', '$ext_foto_6', '$nama_ktm_6', '$size_ktm_6', '$ext_ktm_6')
                            ");
                        
                        if(!$insert){
    
                            echo '
                            <div class="alert alert-danger">
                                <center>
                                    Mohon maaf atas ketidaknyamanan anda <b>Pendaftaran gagal</b>. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia.
                                </center>
                            </div>';
                            
                        }else{
                             
                            echo '<div class="alert alert-success"><center>Pendaftaran berhasil, tekan tombol <b>Lanjutkan</b> di bawah jika ingin menambahkan pemain.</center></div>';

                            include 'functions/email_konfirmasi.php';

                            if(mail($email, $subject, $message, implode("\r\n", $headers))){
                            
                                include 'functions/email_konfirmasi_admin.php';

                            }
                        }
                    }
                            
                }

            }    

        }else{
            echo '
                <div class="alert alert-warning">
                    <center>
                        Alamat email tidak terdaftar.
                    </center>
                </div>';

        }

        chmod(UPLOAD_DIR . $nama_foto_1, 0644); chmod(UPLOAD_DIR . $nama_ktm_1, 0644);
        chmod(UPLOAD_DIR . $nama_foto_2, 0644); chmod(UPLOAD_DIR . $nama_ktm_2, 0644);
        chmod(UPLOAD_DIR . $nama_foto_3, 0644); chmod(UPLOAD_DIR . $nama_ktm_3, 0644);
        chmod(UPLOAD_DIR . $nama_foto_4, 0644); chmod(UPLOAD_DIR . $nama_ktm_4, 0644);
        chmod(UPLOAD_DIR . $nama_foto_5, 0644); chmod(UPLOAD_DIR . $nama_ktm_5, 0644);
        chmod(UPLOAD_DIR . $nama_foto_6, 0644); chmod(UPLOAD_DIR . $nama_ktm_6, 0644);
        
    }

}

?>