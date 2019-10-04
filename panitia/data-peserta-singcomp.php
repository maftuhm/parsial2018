<?php 
require_once "../functions/config.php";
$title = 'Sing Competition';
require_once "header.php";
?>
<?php

?>
        <div class="container container-body">

            <h1>Data Peserta Singcomp</h1>
            
            <hr>

<?php
    if(!$_SESSION['admin']){

      echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';
    }else{
      
        if($data_admin['status'] != 1 && $data_admin['status'] != 2 && $data_admin['status'] != 5){
          
            echo '<div class="alert alert-danger">Anda tidak memiliki akses untuk membuka halaman ini.</div>';

        }else{

            if(isset($_GET['id'])){

                $id = $back_dir.$_GET['id'];
            
                $sql = $conn->query("SELECT * FROM singcomp_parsial WHERE id='$id'");
                $data = $sql->fetch_assoc();

                $email_team = $data['email'];

                $filter = $_GET['tampilan'];

                if($filter != 0){

                    if($filter == 1){

                        $tabel_hidden = 'hidden';
            
                    }elseif($filter == 2){
            
                        $grid_hidden = 'hidden';
                    }
            
                }else{
            
                    $tabel_hidden = 'hidden';            

                }
            }
?>


    
            <div class="row">
            
                <div class="col-md-6 col-md-offset-3">
                
                    <div class="panel panel-default">
                  
                        <!-- Default panel contents -->
                        <div class="panel-heading"><center><h2><?php echo $data['nama_team']; ?></h2></center></div>

                        <table class="table">

                            <tr><th>Genre</th><th>:</th><td><?php echo $data['genre']; ?></td></tr>
                            <tr><th>Instansi</th><th>:</th><td><?php echo $data['kampus_asal']; ?></td></tr>
                            <tr><th>Alamat</th><th>:</th><td><?php echo $data['alamat']; ?></td></tr>
                            <tr><th>Official</th><th>:</th><td><?php echo $data['official']; ?></td></tr>
                            <tr><th>Email</th><th>:</th><td><?php echo $data['email']; ?></td></tr>
                            <tr><th>Nomor HP</th><th>:</th><td><?php echo $data['no_hp']; ?></td></tr>
                            <tr><th>Lagu</th><th>:</th><td><?php echo $data['lagu']; ?></td></tr>
                        
                        </table>
                    
                    </div>
                
                </div>
            
            </div>

            <hr>

            <form class="form-inline" method="GET">

                <div class="form-group">

                    <input type="number" hidden  name="id" value="<?php echo $id;?>">

                    <select name="tampilan" class="form-control" onchange="form.submit()">
                        <?php $filter = (isset($_GET['tampilan']) ? strtolower($_GET['tampilan']) : NULL);  ?>
                        <option value="1" <?php if($filter == '1'){ echo 'selected'; } ?>>Galeri</option>
                        <option value="2" <?php if($filter == '2'){ echo 'selected'; } ?>>Tabel</option>
                    </select>
                    <a href="print/print_singcomp.php?id=<?php echo $id;?>" class="btn btn-default" target="_blank"><span class="glyphicon glyphicon-print" aria-hidden="true"></span></a>                  
                </div>
            
            </form>
            
            <br>

            <div <?php echo $grid_hidden;?>>
                
                <div class="row">

<?php
            $sql = $conn->query("SELECT * FROM data_peserta_singcomp WHERE email='$email_team' AND nomor='1' ORDER BY id");

            if($sql->num_rows > 0 ){

                $no = 1;

                while($row = $sql->fetch_assoc()){

                    echo '
                    <div class="col-xs-4">

                        <div class="thumbnail">

                            <img class="foto" src="foto_peserta/singcomp/'.$row['nama_foto'].'" title="Foto Peserta '.$no.'"/> 

                            <hr>
                      
                            <img class="foto" src="foto_peserta/singcomp/'.$row['nama_ktm'].'" title="Kartu Identitas Peserta '.$no.'"/>
                            
                                <br>
                            
                            <table class="table">
                            
                                <tr>
                                    <th>Nama Lengkap</th><th>:</th><td>'.$row['nama_peserta'].'</td>
                                </tr>
                                <tr>
                                    <th>Posisi</th><th>:</th><td>'.$row['posisi'].'</td>
                                </tr>
                            </table>
                        
                        </div>
                    
                    </div>
                          ';
                    $no++;
                }
            }else{
                echo '<tr><td colspan="5">Tidak ada data</td></tr>';
            }
?>
    
                </div>
                
                <hr>

                <div class="row">

<?php
            $sql = $conn->query("SELECT * FROM data_peserta_singcomp WHERE email='$email_team' AND nomor='2' ORDER BY id");
            
            if($sql->num_rows > 0 ){

                $no = 4;

                while($row = $sql->fetch_assoc()){

                    echo '
                    <div class="col-xs-4">

                        <div class="thumbnail">

                            <img class="foto" src="foto_peserta/singcomp/'.$row['nama_foto'].'" title="Foto Peserta '.$no.'"/> 

                            <hr>
                      
                            <img class="foto" src="foto_peserta/singcomp/'.$row['nama_ktm'].'" title="Kartu Identitas Peserta '.$no.'"/>
                            
                                <br>
                            
                            <table class="table">
                            
                                <tr>
                                    <th>Nama Lengkap</th><th>:</th><td>'.$row['nama_peserta'].'</td>
                                </tr>
                                <tr>
                                    <th>Posisi</th><th>:</th><td>'.$row['posisi'].'</td>
                                </tr>
                            </table>
                        
                        </div>
                    
                    </div>

                      ';
                    $no++;
                }
            }else{
                echo '<tr><td colspan="5">Tidak ada data</td></tr>';
            }
?>
            
                </div>
            
            </div>

            <table <?php echo $tabel_hidden;?> class="table table-striped table-responsive table-hover">
                <tr>
                    <th>NO.</th>
                    <th>NAMA LENGKAP</th>
                    <th>POSISI/PART</th>
                    <th>FOTO</th>
                    <th>KARTU IDENTITAS</th>
                </tr>
<?php

            $sqlp = $conn->query("SELECT * FROM data_peserta_singcomp WHERE email='$email_team' ORDER BY id");

            if($sqlp->num_rows > 0){
                    
                $nomor = 1;
                
                while($rowp = $sqlp->fetch_assoc()){
?>
                <tr>
                    <td><center><?php echo $nomor;?></center></td>
                    <td><?php echo $rowp['nama_peserta'];?></td>
                    <td><?php echo $rowp['posisi'];?></td>
<?php               echo 
                    '
                    <td>
                        <a href="foto_peserta/singcomp/'.$rowp['nama_foto'].'" title="'.$rowp['nama_foto'].'"><img src="foto_peserta/singcomp/'.$rowp['nama_foto'].'" title="'.$rowp['nama_foto'].'" class="foto-peserta" alt="'.$rowp['nama_foto'].'"/>
                        </a>
                    </td>
                    <td>
                      <a href="foto_peserta/singcomp/'.$rowp['nama_ktm'].'" title="'.$rowp['nama_ktm'].'"><img src="foto_peserta/singcomp/'.$rowp['nama_ktm'].'" class="foto-peserta" alt="'.$rowp['nama_ktm'].'"/>
                      </a>
                    </td>';
                    $nomor++;
                }

?>
                </tr>
<?php
            }else{
                
                echo '<tr><td colspan="4">Tidak ada data</td></tr>';
            }
?>

            </table>
<?php
        }
    }
?>
<?php require_once "footer.php";?>