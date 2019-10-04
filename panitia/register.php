<?php 
require_once "../functions/config.php";
$reg_active = 'class="active"';
$title = 'Daftar Admin';
require_once "header.php";
?>
        
        <div class="container container-body">
  
            <h1>Daftar Admin</h1>
  
            <hr>
<?php
    if(!$_SESSION['admin']){

      echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';

    }else{

        if($data_admin['status'] != 1){
            
            echo '<div class="alert alert-danger">Anda tidak memiliki akses untuk membuka halaman ini.</div>';
        
        }else{

?>

            <div class="row">
                
                <div class="col-sm-6">
<?php

            $pass_parsial = '959f893c9f9b23a28610bd5eb9f9bc80'; //Parsial2018
            $pass_futsal = '2ec1c3aacab5f9118003b112193d229e';  //Futsal_parsial
            $pass_mathcomp = '030266fb16c18b66e7e48208c47b884f';  //Mathcomp_parsial
            $pass_singcomp = 'c090d226597e6e273ee832437462a733';  //Singcomp_parsial
            $valid_kode = '2ceaa307111c73a1af40116534402e75';

            if($_POST['register']){
                
                $nama   = $conn->real_escape_string($_POST['nama']);
                $email  = $conn->real_escape_string($_POST['email']);
                $user   = $conn->real_escape_string($_POST['username']);
                $no_hp  = $conn->real_escape_string($_POST['no_hp']);
                $kode_akses  = $conn->real_escape_string($_POST['akses']);
                $pj_content  = $conn->real_escape_string($_POST['pj_content']);
                $kode_admin  = $conn->real_escape_string($_POST['kode-admin']);

                if($kode_akses==2){
                    $pass = $pass_parsial;
                    $status = 2;
                    $hak_akses = 'Semua Data Parsial';
                }
            
                if($kode_akses==3){
                    $pass = $pass_futsal;
                    $status = 3;
                    $hak_akses = 'Data Peserta Futsal';
                }
            
                if($kode_akses==4){
                    $pass = $pass_mathcomp;
                    $status = 4;
                    $hak_akses = 'Data Peserta Mathcomp';
                }
            
                if($kode_akses==5){
                    $pass = $pass_singcomp;
                    $status = 5;
                    $hak_akses = 'Data Peserta Singcomp';
                }

                $sql = $conn->query("SELECT * FROM admin WHERE email='$email'");
                
                if($sql->num_rows == 0){

                    $not_empty = !empty(trim($nama)) && !empty(trim($email)) && !empty(trim($user)) && !empty(trim($kode_akses)) && !empty(trim($kode_admin));

                    if($not_empty){
                        
                        $kode = md5($kode_admin);
                        
                        if($valid_kode == $kode){
                            
                            $insert = $conn->query("INSERT INTO admin (nama, username, email, no_hp, status, hak_akses, pj_content, password) VALUES('$nama', '$user', '$email', '$no_hp', '$status', '$hak_akses', '$pj_content', '$pass')");
                            
                            if($insert){
                            
                                echo '<div class="alert alert-success"><center>Pendaftaran admin berhasil.</center></div>';
                            }else{
                                
                                echo '<div class="alert alert-danger"><center>Ada error pada syntax.</center></div>';
                            }
                        }else{
                            
                            echo '<div class="alert alert-danger"><center>Kode admin salah. Anda tidak memiliki akses untuk mendaftarkan panitia sebagai admin.</center></div>';
                        }    
                    }else{
                        
                        echo '<div class="alert alert-danger"><center>Data wajib diisi.</center></div>';
                    }

                }else{
                    
                    echo '<div class="alert alert-danger"><center>Alamat email sudah terdaftar.</center></div>';
                }
            }

            if(isset($_GET['aksi']) == 'delete'){
            
                $id = $_GET['id'];
                $cek = $conn->query("SELECT * FROM admin WHERE id='$id'");
                $no_delete = $cek->fetch_assoc();

                if($cek->num_rows == 0){
            
                    echo '<div class="alert alert-info">Data tidak ditemukan.</div>';
                }else{
                    
                    if($no_delete['status'] == 1){
                        
                        echo '<div class="alert alert-danger">Anda tidak bisa menghapus data Maftuh Mashuri.</div>';
                    
                    }else{
                        
                        $delete = $conn->query("DELETE FROM admin WHERE id='$id'");
                
                        if($delete){
                
                            echo '<div class="alert alert-danger">Data berhasil dihapus.</div>';
                        }else{
                
                            echo '<div class="alert alert-info">Data gagal dihapus.</div>';
                        }
                    }
                }
            }
?>

                    <form class="form-horizontal" method="POST">

                        <div class="form-group">
                            
                            <label class="col-md-4 control-label">Nama Lengkap</label>
                            
                            <div class="col-md-8">
                            
                                <input type="text" name="nama" class="form-control" placeholder="Nama Lengkap" required="required">
                            
                            </div>
                    
                        </div>
                      
                        <div class="form-group">
                    
                            <label class="col-md-4 control-label">Username</label>
                    
                            <div class="col-md-8">
                    
                                <input type="text" name="username" class="form-control" placeholder="Username" required="required">
                    
                            </div>
                    
                        </div>
                        
                        <div class="form-group">
                    
                            <label class="col-md-4 control-label">Email</label>
                    
                            <div class="col-md-8">
                    
                                <input type="email" name="email" class="form-control" placeholder="email@uinjkt.ac.id" required>
                    
                            </div>
                    
                        </div>

                        <div class="form-group">
                    
                            <label class="col-md-4 control-label">Nomor HP</label>
                    
                            <div class="col-md-8">
                    
                                <input type="tel" name="no_hp" class="form-control" placeholder="Nomor Handphone">
                    
                            </div>
                    
                        </div>
                        
                        <div class="form-group">
                    
                            <label class="col-md-4 control-label">Penanggung Jawab</label>
                    
                            <div class="col-md-8">
                    
                                <select class="form-control" name="pj_content">
                                    <option> </option>
                                    <option value="1.1">Futsal 1</option>
                                    <option value="1.2">Futsal 2</option>
                                    <option value="2">Tryout SBMPTN</option>
                                    <option value="3">Olimpiade Matematika</option>
                                    <option value="4">Sing Competetion</option>
                                </select>
                    
                            </div>
                    
                        </div>
                        
                        <div class="form-group">
                    
                            <label class="col-md-4 control-label">Hak Akses</label>
                    
                            <div class="col-md-8">
                    
                                <select class="form-control" name="akses" required>
                                    <option value="0">--</option>
                                    <option value="2">Semua Data Peserta</option>
                                    <option value="3">Data Peserta Futsal</option>
                                    <option value="4">Data Peserta Mathcomp</option>
                                    <option value="5">Data Peserta Singcomp</option>
                                </select>
                    
                            </div>
                    
                        </div>
                        
                        <div class="form-group">
                    
                            <label class="col-md-4 control-label">Kode Admin</label>
                    
                            <div class="col-md-8">
                    
                                <input type="password" name="kode-admin" class="form-control" placeholder="Kode" required="required">
                    
                            </div>
                    
                        </div>

                        <div class="form-group">
                    
                            <label class="col-md-4 control-label">&nbsp;</label>
                    
                            <div class="col-md-8">
                    
                                <input type="submit" name="register" class="btn btn-primary" value="Register">
                    
                            </div>
                    
                        </div>
                    
                    </form>
                
                </div>

                <div class="col-sm-4">
                    
                    <h3>Keterangan</h3>
                    
                    <hr>
                    
                    <ul>
                        <li>Penanggung Jawab Futsal 1 : pj_content = 1.1</li>
                        <li>Penanggung Jawab Futsal 2 : pj_content = 1.2</li>
                        <li>Penanggung Jawab Tryout : pj_content = 2</li>
                        <li>Penanggung Jawab Olimpiade : pj_content = 3</li>
                        <li>Penanggung Jawab Singcomp : pj_content = 4</li>
                        <li>Hak AKses Anggota Publikasi : status = 2</li>
                    </ul>
                    
                    <hr>
                    
                    <h4>Untuk Content (Selain anggota publikasi.)</h4>
                    
                    <ul>
                        <li>Hak AKses Futsal : status = 3</li>
                        <li>Hak AKses Mathcomp : status = 4</li>
                        <li>Hak AKses Singcomp : status = 5</li>
                    </ul>

                </div>
            
            </div>
            
            <br>
            
            <div class="row">                                        
                <table class="table table-striped table-responsive table-hover">
                
                    <tr>
                        <th>NO.</th>
                        <th>TGL DAFTAR</th>
                        <th>NAMA LENGLAP</th>
                        <th>USERNAME</th>
                        <th>EMAIL</th>
                        <th>NO. HP</th>
                        <th>HAK AKSES</th>       
                        <th>PJ CONTENT</th>       
                        <th>SETTING</th>       
                    </tr>
<?php
            $sql = $conn->query("SELECT * FROM admin ORDER BY id");
            
            if($sql->num_rows > 0){

                $no = 1;

                while($row = $sql->fetch_assoc()){
            
                  $email = $row['email'];
            
                  echo '
                    <tr>
                        <td><center>'.$no.'</center></td>
                        <td>'.$row['tgl_daftar'].'</td>
                        <td>'.$row['nama'].'</td>
                        <td>'.$row['username'].'</td>
                        <td>'.$row['email'].'</td>
                        <td>'.$row['no_hp'].'</td>
                        <td>'.$row['hak_akses'].'</td>
                        <td>'.$row['pj_content'].'</td>
                        <td>
                            <a href="profile.php?id='.$row['id'].'" title="Lihat Detail">
                                <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
                            </a>
                            
                            <a href="edit_admin.php?id='.$row['id'].'" title="Rubah Data">
                                <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                            </a>
                            
                            <a href="ganti.php?id='.$row['id'].'" title="Ganti Password">
                                <span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
                            </a>
                            <a href="register.php?aksi=delete&id='.$row['id'].'" title="Hapus Data" onclick="return confirm(\'Yakin?\')">
                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                            </a>
                        </td>
                    </tr>
                  ';
                  $no++;
                }
            }else{
                echo '
                    <tr><td colspan="8">Tidak ada data</td></tr>';
            }
?>
                    
                </table>
                        
            </div>
<?php
        }
    }
?>

<?php 
require_once "footer.php";
?>