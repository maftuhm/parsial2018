<?php 
require_once "../functions/config.php";
$title = 'Data Team Futsal';
require_once "header.php";
?>

<?php
    
    if(isset($_GET['id'])){

        $id = $_GET['id'];
    
        $sql_pemain = $conn->query("SELECT * FROM futsal_parsial WHERE id='$id'");
        $data_pemain = $sql_pemain->fetch_assoc();
        $email_team = $data_pemain['email'];

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
        <div class="container container-body">

            <h1>Data Team Futsal</h1>
            
            <hr>

<?php
    if(!$_SESSION['admin']){

        echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';

    }else{

        if($data_admin['status'] != 1 && $data_admin['status'] != 2 && $data_admin['status'] != 3){
            
            echo '<div class="alert alert-danger">Anda tidak memiliki akses untuk membuka halaman ini.</div>';
        
        }else{

            if($data_admin['status'] == 1 OR $data_admin['pj_content']==1.1 OR $data_admin['pj_content']==1.2){

                if(isset($_GET['aksi']) == 'delete'){

                    $id_p = $_GET['id_p'];
                    $cek = $conn->query("SELECT * FROM data_pemain_futsal WHERE id='$id_p'");

                    if($cek->num_rows > 0){

                        $delete = $conn->query("DELETE FROM data_pemain_futsal WHERE id='$id_p'");
                        if($delete){
                            
                            echo '<div class="alert alert-success">Data berhasil dihapus.</div>';
                        }else{
                            echo '<div class="alert alert-info">Data pemain gagal dihapus.</div>';
                        }
                    }
                }
            }else{
                
                $hidden_set= 'hidden';
            }

?>
   
            <div class="row">
                
                <div class="col-md-6 col-md-offset-3">
                
                    <div class="panel panel-default">
                  
                        <!-- Default panel contents -->
                        <div class="panel-heading"><center><h2><?php echo $data_pemain['nama_team']; ?></h2></center></div>

                        <table class="table">
                            <tr><th>Universitas</th><th>:</th><td><?php echo $data_pemain['universitas']; ?></td></tr>
                            <tr><th>Fakultas</th><th>:</th><td><?php echo $data_pemain['fakultas']; ?></td></tr>
                            <tr><th>Jurusan</th><th>:</th><td><?php echo $data_pemain['jurusan']; ?></td></tr>
                            <tr><th>Official</th><th>:</th><td><?php echo $data_pemain['official']; ?></td></tr>
                            <tr><th>Email</th><th>:</th><td><?php echo $data_pemain['email']; ?></td></tr>
                            <tr><th>Nomor HP</th><th>:</th><td><?php echo $data_pemain['no_hp']; ?></td></tr>
                            <tr><th>Kategori</th><th>:</th><td><?php echo $data_pemain['kategori']; ?></td></tr>
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
                    <a href="print/print_futsal.php?id=<?php echo $id;?>" class="btn btn-default" target="_blank"><span class="glyphicon glyphicon-print" aria-hidden="true"></span></a>
                </div>
    
            </form>
    
            <br>
    
            <div <?php echo $grid_hidden;?>>

                <div class="row">

<?php
            $sql = $conn->query("SELECT * FROM data_pemain_futsal WHERE email='$email_team' AND nomor='1' ORDER BY id");
            
            if($sql->num_rows > 0 ){

                $no = 1;

                while($row = $sql->fetch_assoc()){

                    echo '
                    <div class="col-sm-6 col-md-3">

                        <div class="thumbnail">
                      
                            <img src="foto_peserta/futsal/'.$row['nama_foto'].'" title="Foto Peserta '.$no.'"/>
                            
                            <div class="caption">

                                <center>
                                    
                                    <h3>'.$row['nama_pemain'].'</h3>
                                    <p>
                                        <a href="foto_peserta/futsal/'.$row['nama_ktm'].'" title="Kartu Identitas Peserta '.$no.'" class="btn btn-default" role="button">Kartu Identitas</a>
                                    </p>
                                
                                </center>
                          
                            </div>
                        
                        </div>
                    
                    </div>

                      ';
                    $no++;
                }
            
            }else{
                
                echo '
                <tr><td colspan="5">Tidak ada data</td></tr>
                ';
            }
?>
    
                </div>

                <hr>

                <div class="row">

<?php
            $sql = $conn->query("SELECT * FROM data_pemain_futsal WHERE email='$email_team' AND nomor='2' ORDER BY id");
            
            if($sql->num_rows > 0 ){

                $no = 5;

                while($row = $sql->fetch_assoc()){

                    echo '
                    <div class="col-sm-6 col-md-3">

                        <div class="thumbnail">
                      
                            <img src="foto_peserta/futsal/'.$row['nama_foto'].'" title="Foto Peserta '.$no.'"/>
                            <div class="caption">

                                <center>
                                    <h3>'.$row['nama_pemain'].'</h3>
                                    <p>
                                        <a href="foto_peserta/futsal/'.$row['nama_ktm'].'" title="Kartu Identitas Peserta '.$no.'" class="btn btn-default" role="button">Kartu Identitas</a>
                                    </p>
                                </center>
                          
                            </div>
                        
                        </div>
                    
                    </div>

                      ';
                  $no++;
                }
            
            }else{
                
                echo '
                    <tr><td colspan="5">Tidak ada data</td></tr>
                    ';
            }
?>
    
                </div>
    
                <hr>

                <div class="row">

<?php
            $sql = $conn->query("SELECT * FROM data_pemain_futsal WHERE email='$email_team' AND nomor='3' ORDER BY id");
            
            if($sql->num_rows > 0 ){

                $no = 9;

                while($row = $sql->fetch_assoc()){

                    echo '
                    <div class="col-sm-6 col-md-3">

                        <div class="thumbnail">
                      
                            <img src="foto_peserta/futsal/'.$row['nama_foto'].'" title="Foto Peserta '.$no.'"/>
                            
                            <div class="caption">

                                <center>
                            
                                    <h3>'.$row['nama_pemain'].'</h3>
                                    <p>
                                        <a href="foto_peserta/futsal/'.$row['nama_ktm'].'" title="Kartu Identitas Peserta '.$no.'" class="btn btn-default" role="button">Kartu Identitas</a>
                                    </p>
                                </center>
                          
                            </div>
                        
                        </div>
                    
                    </div>

                    ';
                    $no++;
                }
            }else{
                
                echo '
                <tr><td colspan="5">Tidak ada data</td></tr>
                ';
            }
?>
    
                </div>

            </div>
            
            <table <?php echo $tabel_hidden;?> class="table table-striped table-responsive table-hover">
              
                <tr>
                    <th>NO.</th>
                    <th>NAMA LENGKAP</th>
                    <th>FOTO</th>
                    <th>KARTU IDENTITAS</th>
                    <th <?= $hidden_set;?>><center>SETTING</center></th>
                </tr>
<?php

            $sqlp = $conn->query("SELECT * FROM data_pemain_futsal WHERE email='$email_team' ORDER BY id");

            if($sqlp->num_rows > 0){
            
                $nomor = 1;
                while($rowp = $sqlp->fetch_assoc()){
?>
                <tr>
                    <td><center><?php echo $nomor;?></center></td>
                    <td><?php echo $rowp['nama_pemain'];?></td>
<?php               echo 
                    '
                    <td>
                        <a href="foto_peserta/futsal/'.$rowp['nama_foto'].'" title="'.$rowp['nama_foto'].'">
                            <img src="foto_peserta/futsal/'.$rowp['nama_foto'].'" title="'.$rowp['nama_foto'].'" class="foto-peserta" alt="'.$rowp['nama_foto'].'"/>
                        </a>
                    </td>
                    <td>
                        <a href="foto_peserta/futsal/'.$rowp['nama_ktm'].'" title="'.$rowp['nama_ktm'].'">
                            <img src="foto_peserta/futsal/'.$rowp['nama_ktm'].'" class="foto-peserta" alt="'.$rowp['nama_ktm'].'"/>
                        </a>
                    </td>';
                    
                    if($data_admin['status']==1 OR $data_admin['pj_content']==1.1 OR $data_admin['pj_content']==1.2){ 
                        echo
                    '
                    <td>
                        <center><a href="edit_pemain_futsal.php?id='.$rowp['id'].'" title="Ubah Data" class="btn btn-primary">
                            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Edit
                        </a></center>
                    ';
                        if ($data_admin['status']==1) {

                            echo '
                    
                        <center><a href="?id='.$id.'&tampilan='.$filter.'&aksi=delete&id_p='.$rowp['id'].'" title="Hapus Data" class="btn btn-danger" onclick="return confirm(\'Yakin?\')">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                        </a></center>
                    ';
                        }
                        echo '</td>';
                    }

                    $nomor++;
                }

?>
                </tr>
<?php
            }else{
                
                echo '
                    <tr><td colspan="4">Tidak ada data</td></tr>';
            }
?>
                </table>

<?php
        }
    }
?>
<?php require_once "footer.php";?>