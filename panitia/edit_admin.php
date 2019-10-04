<?php 
require_once "../functions/config.php";
$title = 'Ubah Data';
require_once "header.php";
?>
        <div class="container container-body">
            
            <h2><a href="register.php">Daftar Admin</a> <span class="glyphicon glyphicon-chevron-right"></span><span class="glyphicon glyphicon-chevron-right"></span> <a href="">Ubah Data</a></h2>
            
            <hr>
<?php
    if(!$_SESSION['admin']){

        echo '<div class="alert alert-danger"><center>Anda harus login untuk membuka halaman ini.</center></div>';

    }else{

        if($data_admin['status'] != 1){
            
            echo '<div class="alert alert-danger"><center>Anda tidak memiliki akses untuk membuka halaman ini.</center></div>';
        
        }else{

?>

            <div class="row">
                
                <div class="col-sm-6">

<?php

            $valid_kode = '2ceaa307111c73a1af40116534402e75';

            $id = $_GET['id'];
            $sql = $conn->query("SELECT * FROM admin WHERE id='$id'");
            $row = $sql->fetch_assoc();
            
            if($sql->num_rows > 0){

                if($row['status']==1){

                    $hak_akses = 'Admin';
                    $hidden = 'hidden';
                    $kode_akses = 1;
                    $status =1;            

                }else{

                    $kode_akses  = $conn->real_escape_string($_POST['akses']);
                }

                $nama   = $conn->real_escape_string($_POST['nama']);
                $email  = $conn->real_escape_string($_POST['email']);
                $user   = $conn->real_escape_string($_POST['username']);
                $no_hp  = $conn->real_escape_string($_POST['no_hp']);
                $pj_content  = $conn->real_escape_string($_POST['pj_content']);
                $kode_admin  = $conn->real_escape_string($_POST['kode-admin']);

                if($kode_akses==2){
    
                    $status = 2;
                    $hak_akses = 'Semua Data Parsial';
                }
                
                if($kode_akses==3){
                    $status = 3;
                    $hak_akses = 'Data Peserta Futsal';
                }
                
                if($kode_akses==4){
                    $status = 4;
                    $hak_akses = 'Data Peserta Mathcomp';
                }
                
                if($kode_akses==5){
                    $status = 5;
                    $hak_akses = 'Data Peserta Singcomp';
                }
                
                if($_POST['simpan']){

                    $not_empty = !empty(trim($nama)) && !empty(trim($email)) && !empty(trim($user)) && !empty(trim($kode_akses)) && !empty(trim($kode_admin)) && !empty(trim($no_hp));

                    if($not_empty){
                        
                        $kode = md5($kode_admin);
                        
                        if($valid_kode == $kode){
                            
                            $update = $conn->query("UPDATE admin SET nama='$nama', username='$user', email='$email', no_hp='$no_hp', status='$status', pj_content='$pj_content', hak_akses='$hak_akses' WHERE id='$id'");
                            
                            if($update){
                            
                                echo '<div class="alert alert-success"><center>Perubahan data admin berhasil.</center></div>';
                            }else{
                                
                                echo '<div class="alert alert-danger"><center>Ada error pada syntax.</center></div>';
                            }
                        }else{
                            echo '<div class="alert alert-danger"><center>Kode admin salah. Anda tidak memiliki akses untuk mendaftarkan panitia sebagai admin.</center></div>';
                        }    
                
                    }else{
                        echo '<div class="alert alert-danger"><center>Data wajib diisi.</center></div>';
                    }
                }
            }else{
                
                echo '<div class="alert alert-danger"><center>Tidak ada data.</center></div>';
            }

?>
                    <form class="form-horizontal" method="post">

                        <div class="form-group">
                            
                            <label class="col-md-4 control-label">Nama Lengkap</label>
                            
                            <div class="col-md-8">
                            
                                <input type="text" name="nama" value="<?php echo $row['nama'];?>" class="form-control" placeholder="Nama Lengkap" required="required">
                            
                            </div>
                   
                        </div>
                      
                        <div class="form-group">
                   
                            <label class="col-md-4 control-label">Username</label>
                   
                            <div class="col-md-8">
                   
                                <input type="text" name="username" value="<?php echo $row['username'];?>" class="form-control" placeholder="Username" required="required">
                   
                            </div>
                   
                        </div>
                        
                        <div class="form-group">
                   
                            <label class="col-md-4 control-label">Email</label>
                   
                            <div class="col-md-8">
                   
                                <input type="email" name="email" value="<?php echo $row['email'];?>" class="form-control" placeholder="email@uinjkt.ac.id" required="required">
                   
                            </div>
                   
                        </div>

                        <div class="form-group">
                   
                            <label class="col-md-4 control-label">Nomor HP</label>
                   
                            <div class="col-md-8">
                   
                                <input type="tel" name="no_hp" value="<?php echo $row['no_hp'];?>" class="form-control" placeholder="Nomor Handphone" required="required">
                   
                            </div>
                   
                        </div>
                        
                        <div class="form-group">
                   
                            <label class="col-md-4 control-label">Penanggung Jawab</label>
                   
                            <div class="col-md-8">
                   
                                <select class="form-control" name="pj_content" required>
                                    <option <?php if($row['pj_content'] == '0'){ echo 'selected'; } ?>>--</option>
                                    <option value="1.1" <?php if($row['pj_content'] == '1.1'){ echo 'selected'; } ?>>Futsal 1</option>
                                    <option value="1.2" <?php if($row['pj_content'] == '1.2'){ echo 'selected'; } ?>>Futsal 2</option>
                                    <option value="2" <?php if($row['pj_content'] == '2'){ echo 'selected'; } ?> >Tryout SBMPTN</option>
                                    <option value="3" <?php if($row['pj_content'] == '3'){ echo 'selected'; } ?>>Olimpiade</option>
                                    <option value="4" <?php if($row['pj_content'] == '4'){ echo 'selected'; } ?>>Sing Competition</option>
                                    <option value="5" <?php if($row['pj_content'] == '5'){ echo 'selected'; } ?>>Workshop</option>
                                </select>
                   
                            </div>
                   
                        </div>
                          
                        <div class="form-group">
                   
                            <label class="col-md-4 control-label">Hak Akses</label>
                   
                            <div class="col-md-8">
                   
                                <select class="form-control" name="akses" required>
                                    <option <?php if($row['status'] == '1'){ echo 'selected'; } ?>>Admin</option>
                                    <option value="2" <?php if($row['status'] == '2'){ echo 'selected'; } ?> >Semua Data Peserta</option>
                                    <option value="3" <?php if($row['status'] == '3'){ echo 'selected'; } ?>>Data Peserta Futsal</option>
                                    <option value="4" <?php if($row['status'] == '4'){ echo 'selected'; } ?>>Data Peserta Mathcomp</option>
                                    <option value="5" <?php if($row['status'] == '5'){ echo 'selected'; } ?>>Data Peserta Singcomp</option>
                                    <option value="6" <?php if($row['status'] == '6'){ echo 'selected'; } ?>>Data Peserta Workshop</option>
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

                                <input type="submit" name="simpan" class="btn btn-primary" value="Save">

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
                        <li>Penanggung Jawab Workshop : pj_content = 5</li>
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
<?php
        }
    }
?>
<?php require_once "footer.php";?>