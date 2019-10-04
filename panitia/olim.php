<?php 
require_once "../functions/config.php";
$math_active = 'class="active"';
$reload = '<meta http-equiv="refresh" content="120">';
$title = 'Olimpiade Matematika';
require_once "header.php";
?>

        <div class="container-body">
            
            <h1>Olimpiade Matematika</h1>
            
            <hr>
<?php
    if(!$_SESSION['admin']){

        echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';
    }else{
    
        if($data_admin['status'] != 1 && $data_admin['status'] != 2 && $data_admin['status'] != 4){
            
            echo '<div class="alert alert-danger">Anda tidak memiliki akses untuk membuka halaman ini.</div>';
        }else{

            if($data_admin['status'] == 1 OR $data_admin['pj_content']==3){

                if(isset($_GET['aksi']) == 'delete'){

                    $id     = $_GET['id'];
                    $cek    = $conn->query("SELECT * FROM olimpiade_parsial WHERE id='$id'");

                    if($cek->num_rows > 0){

                        $delete = $conn->query("DELETE FROM olimpiade_parsial WHERE id='$id'");
                        if($delete){
                            
                            echo '<div class="alert alert-success">Data berhasil dihapus.</div>';
                        }else{
                            echo '<div class="alert alert-info">Data gagal dihapus.</div>';
                        }
                    }
                }
            }else{
                
                $hidden= 'hidden';
            }
?>
  
      <!-- Single button -->
            <div class="btn-group" style="margin-bottom: 20px;">
                  
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Olimpiade Matematika <span class="caret"></span>
                </button>
                  
                <ul class="dropdown-menu">
                    <li><a href="tryout-sbmptn.php">Tryout SBMPTN</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="">Olimpiade Matematika</a></li>
                </ul>
<?php       if ($data_admin['status']==1) {
                echo'

                <a href="print/print_olim.php" class="btn btn-default" target="_blank"><span class="glyphicon glyphicon-print" aria-hidden="true"></span></a>
                ';
            }
?>
            </div>

        <div class="table-scroll">

            <table class="table table-responsive table-striped table-hover">
                
                <tr>
                    <th>NO.</th>
                    <th>TGL DAFTAR</th>
                    <th>NAMA</th>
                    <th>TEMPAT & TGL LAHIR</th>
                    <th>ALAMAT</th>
                    <th>SEKOLAH</th>
                    <th>EMAIL</th>
                    <th>NO. HP</th>
                    <th>NAMA PEMBIMBING</th>
                    <th>NO. HP PEMBIMBING</th>
                    <th>PEMBAYARAN</th>
                    <th <?php echo $hidden;?>>SETTING</th>
                </tr>
<?php
            $sql = $conn->query("SELECT * FROM olimpiade_parsial ORDER BY id");
      
            if($sql->num_rows > 0){

                $no = 1;

                while($row = $sql->fetch_assoc()){
                    
                    $email = $row['email'];
                    $sqlb = $conn->query("SELECT * FROM konfirmasi_pembayaran WHERE email='$email' AND nama_content='olimpiade'");
                    $rowb = $sqlb->fetch_assoc();
                    $sqls = $conn->query("SELECT * FROM konfirmasi_pembayaran WHERE email='$email' AND nama_content='sr olim'");
                    $rows = $sqls->fetch_assoc();
          
                    if($sqls->num_rows == 0){
                        
                        $rows['file_name']='logo-himatika.png';
                    }
                    
                    if($sqlb->num_rows == 0){
                        
                        $row['pembayaran']='';
                    }

                    echo '
                <tr>
                    <td><center>'.$no.'</center></td>
                    <td>'.$row['tgl_daftar'].'</td>
                    <td><a href="konfirmasi_pembayaran/olimpiade/'.$rows['file_name'].'" title="Lihat Surat Rekomendasi">'.$row['nama'].'</a></td>
                    <td>'.$row['tempat_lahir'].', '.$row['tgl_lahir'].'</td>
                    <td>'.$row['alamat'].'</td>
                    <td>'.$row['sekolah'].'</td>
                    <td>'.$row['email'].'</td>
                    <td>'.$row['no_hp'].'</td>
                    <td>'.$row['nama_pemb'].'</td>
                    <td>'.$row['no_hp_pemb'].'</td>
                    <td>
                        <a href="konfirmasi_pembayaran/olimpiade/'.$rowb['file_name'].'" title="Lihat Bukti Pembayaran"><b class="lunas">'.$row['pembayaran'].'</b></a>
                    </td>';
                    
                    if($data_admin['status']==1 OR $data_admin['pj_content']==3){ 
                        echo
                    '
                    <td>
                        <a href="edit_data_olim.php?id='.$row['id'].'" title="Ubah Data" class="btn btn-primary">
                            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Edit
                        </a>
                    ';
                        if ($data_admin['status']==1) {

                            echo '
                    
                        <center><a href="?aksi=delete&id='.$row['id'].'" title="Hapus Data" class="btn btn-danger" onclick="return confirm(\'Yakin?\')">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                        </a></center>
                    </td>';
                        }
                    }

                        echo '
                </tr>
                ';
                    $no++;
                }
            
            }else{
                
                echo '<tr><td colspan="11">Tidak ada data</td></tr>';
            }
?>

            </table>
        </div
<?php
        }
    }
?>

<?php require_once "footer.php";?>