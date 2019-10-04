<?php 
require_once "../functions/config.php";
$sing_active = 'class="active"';
$reload = '<meta http-equiv="refresh" content="120">';
$title = 'Sing Competition';
require_once "header.php";

    if(isset($_GET['genre'])){

        $filter = $_GET['genre'];

        if($filter != 0){

            if($filter == 1){
                
                $genre = 'Group Vocal';
            }else{
                $genre = 'Solo Vocal';
            }

            $sql = $conn->query("SELECT * FROM singcomp_parsial WHERE genre='$genre' ORDER BY id");

        }else{

            $sql = $conn->query("SELECT * FROM singcomp_parsial ORDER BY id");
        }
        
    }else{

        $sql = $conn->query("SELECT * FROM singcomp_parsial ORDER BY id");
    
    }
?>

        <div class="container container-body">
        
            <h1>Sing Competition <?php echo $genre;?></h1>
            
            <hr>
<?php
    
    if(!$_SESSION['admin']){

        echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';
    }else{
      
        if($data_admin['status'] != 1 && $data_admin['status'] != 2 && $data_admin['status'] != 5){
            
            echo '<div class="alert alert-danger">Anda tidak memiliki akses untuk membuka halaman ini.</div>';
        }else{

            if($data_admin['status'] == 1){

                if(isset($_GET['aksi']) == 'delete'){

                    $id     = $_GET['id'];
                    $cek    = $conn->query("SELECT * FROM singcomp_parsial WHERE id='$id'");

                    if($cek->num_rows > 0){

                        $delete = $conn->query("DELETE FROM singcomp_parsial WHERE id='$id'");
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
            <form class="form-inline" method="GET">
              
                <div class="form-group select">
                    
                    <select name="genre" class="form-control" onchange="form.submit()">
                        <option value="0">Semua</option>
                        <?php $filter = (isset($_GET['genre']) ? strtolower($_GET['genre']) : NULL);  ?>
                        <option value="1" <?php if($filter == '1'){ echo 'selected'; } ?>>Group Vocal</option>
                        <option value="2" <?php if($filter == '2'){ echo 'selected'; } ?>>Solo Vocal</option>
                    </select>
                
                </div>
            
            </form>
            
            <br>

        <div class="table-scroll">

            <table class="table table-responsive table-striped table-hover">

                <tr>
                    <th>NO.</th>
                    <th>TGL DAFTAR</th>
                    <th>NAMA TEAM</th>
                    <th>GENRE</th>
                    <th>INSTANSI</th>
                    <th>ALAMAT INSTANSI</th>
                    <th>OFFICIAL</th>
                    <th>EMAIL</th>
                    <th>NO. HP</th>
                    <th>LAGU</th>
                    <th>PEMBAYARAN</th>
                    <th <?php echo $hidden;?>>SETTING</th>
                </tr>
<?php
            if($sql->num_rows > 0){
                
                $no = 1;
                while($row = $sql->fetch_assoc()){

                  $email = $row['email'];
                  $sqlb = $conn->query("SELECT * FROM konfirmasi_pembayaran WHERE email='$email' AND nama_content='singcomp'");
                  $rowb = $sqlb->fetch_assoc();

                    echo '
                <tr>
                    <td><center>'.$no.'</center></td>
                    <td>'.$row['tgl_daftar'].'</td>
                    <td><a href="data-peserta-singcomp.php?id='.$row['id'].'" title="Lihat Data Team" target="_blank">'.$row['nama_team'].'</a></td>
                    <td>'.$row['genre'].'</td>
                    <td>'.$row['kampus_asal'].'</td>
                    <td>'.$row['alamat'].'</td>            
                    <td>'.$row['official'].'</td>
                    <td>'.$row['email'].'</td>
                    <td>'.$row['no_hp'].'</td>
                    <td>'.$row['lagu'].'</td>
                    <td>
                        <a href="konfirmasi_pembayaran/singcomp/'.$rowb['file_name'].'" title="Lihat Bukti Pembayaran">
                            <b class="lunas">'.$row['pembayaran'].'</b>
                        </a>
                    </td>';
                if($data_admin['status']==1 OR $data_admin['pj_content']==4){ 
                        echo
                    '
                    <td>
                        <a href="data-peserta-singcomp.php?id='.$row['id'].'" title="Lihat Detail">
                            <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
                        </a>
                        <a href="edit_data_singcomp.php?id='.$row['id'].'" title="Ubah Data">
                            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                        </a>
                    ';
                    }
                    if ($data_admin['status']==1) {
                        echo '
                        <a href="?genre='.$filter.'&aksi=delete&id='.$row['id'].'" title="Hapus Data" onclick="return confirm(\'Yakin?\')">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                        </a>';
                    }
                        echo '
                    </td>
                </tr>
                ';
                    $no++;
                }
            
            }else{
                
                echo '<tr><td colspan="11">Tidak ada data</td></tr>';
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