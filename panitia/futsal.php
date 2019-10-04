<?php 
require_once "../functions/config.php";
$futsal_active = 'class="active"';
$title = 'Futsal';
$reload = '<meta http-equiv="refresh" content="120">';
require_once "header.php";

    if(isset($_GET['kategori'])){

        $filter = $bak_dir.$_GET['kategori'];

        if($filter != 0){

            if($filter == 1){
                
                $kategori = 'IKAHIMATIKA';
            }else{

                $kategori = 'Mahasiswa Umum';
            }

            $sql = $conn->query("SELECT * FROM futsal_parsial WHERE kategori='$kategori' ORDER BY id");

        }else{

            $sql = $conn->query("SELECT * FROM futsal_parsial ORDER BY id");
        }
    }else{
        
        $sql = $conn->query("SELECT * FROM futsal_parsial ORDER BY id");
    }

?>

        <div class="container container-body">
            
            <h1>Futsal <?php echo $kategori;?></h1>
            
            <hr>
            <div class="row">

<?php
    if(!$_SESSION['admin']){

        echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';

    }else{

        if($data_admin['status'] != 1 && $data_admin['status'] != 2 && $data_admin['status'] != 3){
            
            echo '<div class="alert alert-danger">Anda tidak memiliki akses untuk membuka halaman ini.</div>';
        
        }else{

            if($data_admin['status'] == 1 OR $data_admin['pj_content'] == 1.1 OR $data_admin['pj_content'] == 1.2){

                if(isset($_GET['aksi1']) == 'delete_team'){

                    $id = $_GET['id'];
                    $cek_team = $conn->query("SELECT * FROM futsal_parsial WHERE id='$id'");
                    $select = $cek_team->fetch_assoc();

                    if($cek_team->num_rows > 0){

                        $delete_1 = $conn->query("DELETE FROM futsal_parsial WHERE id='$id'");
                        if($delete_1){
                            
                            echo '<div class="alert alert-success">Data berhasil dihapus.</div>';
                        }else{
                            echo '<div class="alert alert-info">Data team gagal dihapus.</div>';
                        }
                    }
                }

                if(isset($_GET['aksi']) == 'delete'){

                    $id = $_GET['id'];
                    $cek = $conn->query("SELECT * FROM futsal_parsial WHERE id='$id'");
                    $select = $cek->fetch_assoc();

                    if($cek->num_rows > 0){

                        $email_team = $select['email'];
                        $cek1 = $conn->query("SELECT * FROM data_pemain_futsal WHERE email='$email_team' ");
                        $select_foto = $cek1->fetch_assoc();

                        if($cek1->num_rows > 0){

                            /*$files = glob('foto_peserta/futsal/'.$select_foto['nama_foto'].'');
                            
                            foreach ($files as $key => $file) {
                                if(is_file($file)){
                                    $delete_foto = unlink($file);
                                }
                            }
                            
                            if($delete_foto){*/
            
                                $delete_pemain = $conn->query("DELETE FROM data_pemain_futsal WHERE email='$email_team'");
            
                                if($delete_pemain){

                                    $delete = $conn->query("DELETE FROM futsal_parsial WHERE id='$id'");
                                    if($delete){
                                        
                                        echo '<div class="alert alert-success">Data berhasil dihapus.</div>';
                                    }else{
                                        echo '<div class="alert alert-info">Data team gagal dihapus.</div>';
                                    }
                                }else{
                                    echo '<div class="alert alert-info">Data pemain gagal dihapus.</div>';
                                }
                            /*}else{

                                echo '<div class="alert alert-info">Foto gagal dihapus.</div>';
                            }*/
                        }else{

                            echo '<div class="alert alert-info">Tidak ada data di tabel data pemain.</div>';
                        }
                    }else{

                        echo '<div class="alert alert-info">Data tidak ditemukan.</div>';
                    }
                }

            }else{
                $hidden = 'hidden';
            }

?>
            <form class="form-inline" method="GET">
                
                <div class="form-group select">
                
                    <select name="kategori" class="form-control" onchange="form.submit()">
                        <option value="0">Semua</option>
                        <?php $filter = (isset($_GET['kategori']) ? strtolower($_GET['kategori']) : NULL);  ?>
                        <option value="1" <?php if($filter == '1'){ echo 'selected'; } ?>>IKAHIMATIKA</option>
                        <option value="2" <?php if($filter == '2'){ echo 'selected'; } ?>>Mahasiswa Umum</option>
                    </select>
                
                </div>
            
            </form>
            
            <br>

        <div class="table-scroll">
            
            <table class="table table-striped table-responsive table-hover">
            
                <tr>
                    <th>NO.</th>
                    <th>TGL DAFTAR</th>
                    <th>NAMA TEAM</th>
                    <th>UNIVERSITAS</th>
                    <th>FAKULTAS</th>
                    <th>JURUSAN</th>
                    <th>OFFICIAL</th>
                    <th>EMAIL</th>
                    <th>NO. HP</th>
                    <th>KATEGORI</th>
                    <th>PEMBAYARAN</th>
                    <th <?php echo $hidden;?>>SETTING</th>
                </tr>
<?php
            if($sql->num_rows > 0){
                
                $no = 1;
                
                while($row = $sql->fetch_assoc()){

                  $email = $row['email'];

                  $sqlb = $conn->query("SELECT * FROM konfirmasi_pembayaran WHERE email='$email' AND nama_content='futsal'");
                  $rowb = $sqlb->fetch_assoc();

                    echo '
                <tr>
                    <td><center>'.$no.'</center></td>
                    <td>'.$row['tgl_daftar'].'</td>
                    <td><a href="data-pemain-futsal.php?id='.$row['id'].'&tampilan=0" target="_blank">'.$row['nama_team'].'</a></td>
                    <td>'.$row['universitas'].'</td>
                    <td>'.$row['fakultas'].'</td>
                    <td>'.$row['jurusan'].'</td>
                    <td>'.$row['official'].'</td>
                    <td>'.$row['email'].'</td>
                    <td>'.$row['no_hp'].'</td>
                    <td>'.$row['kategori'].'</td>
                    <td>
                        <a href="konfirmasi_pembayaran/futsal/'.$rowb['file_name'].'" title="Lihat Bukti Pembayaran"><b>'.$row['pembayaran'].'</b>
                        </a>
                    </td>
                    ';

                    if($data_admin['status']==1 OR $data_admin['pj_content'] == 1.1 OR $data_admin['pj_content'] == 1.2){
                        echo '
                    <td>
                        <a href="data-pemain-futsal.php?id='.$row['id'].'" title="Lihat Detail">
                            <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
                        </a>
                        <a href="edit_data.php?id='.$row['id'].'" title="Ubah Data">
                            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
                        </a>
                        
                        ';

                        if($data_admin['status']==1){ 
                            echo
                            '
                        <a href="?aksi=delete&id='.$row['id'].'" title="Hapus Semua Data Team" onclick="return confirm(\'Yakin?\')">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                        </a>
                        <a href="?aksi1=delete_team&id='.$row['id'].'" title="Hapus Data Team" onclick="return confirm(\'Yakin?\')">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                        </a>
                            ';
                        }
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