<?php 
require_once "../functions/config.php";
$title = 'Ubah Password';
require_once "header.php";
?>

        <div class="container container-body">

            <h1>Ubah Password</h1>

            <hr>

<?php
    if(!$_SESSION['admin']){

        echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';

    }else{

?>
            <div class="row">

                <div class="col-md-6 col-md-offset-3">
<?php

        if($_GET['id']){

            if($data_admin['status'] != 1){
                
                echo '<div class="alert alert-danger">Url salah.</div>';
                exit;

            }else{

                $id = $_GET['id'];
                $sql = $conn->query("SELECT * FROM admin WHERE id='$id'");
                
                if($sql->num_rows>0){
                
                    $row = $sql->fetch_assoc();
                    $email = 'value="'.$row['email'].'"';

                    if($_POST['kirim']){

                        $password_lama      = $conn->real_escape_string($_POST['password_lama']);
                        $password_baru      = $conn->real_escape_string($_POST['password_baru']);
                        $konfirmasi_password  = $conn->real_escape_string($_POST['konfirmasi_password']);

                        $password_lama  = md5($password_lama);

                        $cek      = $conn->query("SELECT * FROM admin WHERE status='1' AND password='$password_lama'");

                        if($cek->num_rows){

                            if(strlen($password_baru) >= 5){

                                if($password_baru == $konfirmasi_password){

                                    $password_baru  = md5($password_baru);

                                    $update     = $conn->query("UPDATE admin SET password='$password_baru' WHERE id='$id'");

                                    if($update){

                                        echo '<div class="alert alert-success"><center>Password berhasil di ganti.</center></div>';
                                    }else{

                                        echo '<div class="alert alert-danger">Gagal ganti password.</div>';
                                    }         
                                }else{

                                    echo '<div class="alert alert-danger">Konfirmasi password tidak cocok.</div>';
                                }
                            }else{

                                echo '<div class="alert alert-danger">Passwor baru minimal 5 karakter.</div>';
                            }
                        }else{

                            echo '<div class="alert alert-danger">Password lama salah.</div>';
                        }
                        
                    }
                }else{
                    
                    echo '<div class="alert alert-danger">Tidak ada data dengan id '.$id.'.</div>';
                }
            }
        }else{

            //proses jika tombol rubah di klik
    
            if($_POST['kirim']){

                //membuat variabel untuk menyimpan data inputan yang di isikan di form

                $email = $conn->real_escape_string($_POST['email']);

                if($email != $_SESSION['admin']){
                    
                    echo '<div class="alert alert-danger">Anda tidak bisa mengganti password orang lain.</div>';
                }else{
            
                    $password_lama      = $conn->real_escape_string($_POST['password_lama']);

                    $password_baru      = $conn->real_escape_string($_POST['password_baru']);

                    $konfirmasi_password  = $conn->real_escape_string($_POST['konfirmasi_password']);

                    //cek dahulu ke database dengan query SELECT

                    //kondisi adalah WHERE (dimana) kolom password adalah $password_lama di encrypt m5

                    //encrypt -> md5($password_lama)

                    $password_lama  = md5($password_lama);

                    $cek      = $conn->query("SELECT * FROM admin WHERE email='$email' AND password='$password_lama'");

                    if($cek->num_rows){

                        //kondisi ini jika password lama yang dimasukkan sama dengan yang ada di database

                        //membuat kondisi minimal password adalah 5 karakter

                        if(strlen($password_baru) >= 5){

                            //jika password baru sudah 5 atau lebih, maka lanjut ke bawah

                            //membuat kondisi jika password baru harus sama dengan konfirmasi password

                            if($password_baru == $konfirmasi_password){

                                //jika semua kondisi sudah benar, maka melakukan update kedatabase

                                //query UPDATE SET password = encrypt md5 password_baru

                                //kondisi WHERE id user = session id pada saat login, maka yang di ubah hanya user dengan id tersebut

                                $password_baru  = md5($password_baru);
                              
                                //$id    = $_SESSION['id']; //ini dari session saat login

                                $update     = $conn->query("UPDATE admin SET password='$password_baru' WHERE email='$email'");

                                if($update){

                                    //kondisi jika proses query UPDATE berhasil

                                    echo '<div class="alert alert-success"><center>Password berhasil di ganti.</center></div>';

                                }else{

                                    //kondisi jika proses query gagal

                                    echo '<div class="alert alert-danger">Gagal ganti password.</div>';
                                }         

                            }else{

                                    //kondisi jika password baru beda dengan konfirmasi password

                                    echo '<div class="alert alert-danger">Konfirmasi password tidak cocok.</div>';
                            }

                        }else{

                            //kondisi jika password baru yang dimasukkan kurang dari 5 karakter

                            echo '<div class="alert alert-danger">Passwor baru minimal 5 karakter.</div>';

                        }
                    }else{

                        //kondisi jika password lama tidak cocok dengan data yang ada di database

                        echo '<div class="alert alert-danger">Password lama salah.</div>';

                    }

                }
            }

        }

?>

                    <form class="form-horizontal" method="POST">

                        <div class="form-group">

                            <label class="col-md-4 control-label">Email</label>

                            <div class="col-md-8">

                                <input type="email" name="email" <?php echo $email;?> class="form-control" placeholder="example@email.com">

                            </div>

                        </div>

                        <div class="form-group">

                            <label class="col-md-4 control-label">Password Lama</label>

                            <div class="col-md-8">

                                <input type="password" name="password_lama" class="form-control" placeholder="Password Lama">

                            </div>

                        </div>

                        <div class="form-group">

                            <label class="col-md-4 control-label">Password Baru</label>

                            <div class="col-md-8">

                                <input type="password" name="password_baru" class="form-control" placeholder="Password Baru">

                            </div>

                        </div>       

                        <div class="form-group">

                            <label class="col-md-4 control-label">Konfirmasi Password Baru</label>

                                <div class="col-md-8">

                                    <input type="password" name="konfirmasi_password" class="form-control" placeholder="Konfirmasi Password Lama">

                                </div>

                            </div>

                        <div class="form-group">

                            <label class="col-md-4 control-label">&nbsp;</label>

                            <div class="col-md-8">

                                <input type="submit" name="kirim" class="btn btn-primary" value="Update">

                            </div>

                        </div>

                        <div class="form-group">

                            <label class="col-md-4 control-label">&nbsp;</label>

                            <div class="col-md-8">

                                Jika ada masalah hubungi <a href="../contact-us.php">Maftuh Mashuri.</a>

                            </div>

                        </div>

                    </form>

                </div>

            </div>

<?php
    }
?>
<?php require_once "footer.php";?>