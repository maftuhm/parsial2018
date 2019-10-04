<?php 
require_once "../functions/config.php";
$reload = '<meta http-equiv="refresh" content="120">';
$title = 'Data Pembayaran';
require_once "header.php";

    if(isset($_GET['id_content'])){

        $id_content = $_GET['id_content'];

        if($id_content == 1 ){
            $nama_tabel = 'futsal_parsial';
            $judul      = 'Futsal';
            $nama_content = 'futsal';
            $nama_folder = 'futsal';
            $status = 3;
        }
        if($id_content == 2 ){
            $nama_tabel = 'tryout_sbmptn_parsial';
            $judul      = 'Try Out SBMPTN';
            $nama_content = 'tryout_sbmptn';
            $nama_folder = 'tryout_sbmptn';
            $status = 4;
            $h_pil = '<th>PILIHAN</th>';

            if (isset($_GET['sort_by'])) {
                $urut = $_GET['sort_by'];
            }else{
                $urut = 'id';
            }

        }else{
            $urut = 'id';
        }

        if($id_content == 3 ){
            $nama_tabel = 'olimpiade_parsial';
            $judul      = 'Olimpiade Matematika';
            $nama_content = 'olimpiade';
            $nama_content_sr = 'sr olim';
            $nama_folder = 'olimpiade';
            $status = 4;
            $hsr = '<th>SURAT REKOMENDASI</th>'; // header surat rekomendasi
        }
        if($id_content == 4 ){
            $nama_tabel = 'singcomp_parsial';
            $judul      = 'Sing Competition';
            $nama_content = 'singcomp';
            $nama_folder = 'singcomp';
            $status = 5;
        }
        if($id_content == 5 ){
            $nama_tabel = 'workshop_parsial';
            $judul      = 'Workshop';
            $nama_content = 'workshop';
            $nama_folder = 'workshop';
            $status = 6;
        }
    }
?>

        <div class="container-body container">
    
            <h1>Data Pembayaran <?php echo $judul;?></h1>
    
            <hr>

            <form class="form-inline" method="GET">

                <div class="form-group select">

                    <select name="id_content" class="form-control" onchange="form.submit()">
                        <option value="0">Pilih Content</option>
                        <?php $id_content = (isset($_GET['id_content']) ? strtolower($_GET['id_content']) : NULL);  ?>
                        <option value="1" <?php if($id_content == '1'){ echo 'selected'; } ?>>Futsal</option>
                        <option value="2" <?php if($id_content == '2'){ echo 'selected'; } ?>>Tryout SBMPTN</option>
                        <option value="3" <?php if($id_content == '3'){ echo 'selected'; } ?>>Olimpiade Matematika</option>
                        <option value="4" <?php if($id_content == '4'){ echo 'selected'; } ?>>Sing Competition</option>
                        <option value="5" <?php if($id_content == '5'){ echo 'selected'; } ?>>Workshop</option>
                    </select>

                </div>
<?php
                    if ($id_content ==2) {
                        $sort_by = (isset($_GET['sort_by']) ? strtolower($_GET['sort_by']) : NULL);
                        if($sort_by == 'pilihan'){ 
                            $sel_pil = 'selected';
                            $url_print = '&sort_by='.$sort_by;
                        }elseif ($sort_by == 'id') {
                            $sel_id = 'selected';
                            $url_print = '&sort_by='.$sort_by;
                        }
                    echo '
                <div class="form-group select">

                    <select name="sort_by" class="form-control" onchange="form.submit()">
                        <option value="id" '.$sel_id.'>Urut Berdasarkan Tanggal</option>
                        <option value="pilihan" '.$sel_pil.'>Urut Berdasarkan Pilihan</option>
                    </select>
                </div>';

                    if ($data_admin['status']==1 OR $data_admin['pj_content']==2) {
                        echo'
                        <div class="form-group">

                            <a href="print/print_tryout.php?peserta=fix'.$url_print.'" class="btn btn-default" target="_blank"><span class="glyphicon glyphicon-print" aria-hidden="true"></span></a>
                        </div>
                        ';
                    }

                    }
?>
            </form>

            <br>
<?php

    if(!$_SESSION['admin']){
    
        echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';
    }else{

        if($data_admin['status'] != 1 && $data_admin['status'] != 2 && $data_admin['status'] != $status){
            
            echo '<div class="alert alert-danger">Anda tidak memiliki akses untuk membuka halaman ini.</div>';
        }else{

            if($data_admin['status'] == 1 OR $data_admin['pj_content']==2){

                if(isset($_GET['aksi']) == 'delete'){

                    $id = $_GET['id'];
                    $cek = $conn->query("SELECT * FROM konfirmasi_pembayaran WHERE id='$id'");

                    if($cek->num_rows > 0){

                        $delete = $conn->query("DELETE FROM konfirmasi_pembayaran WHERE id='$id'");
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

        <div class="table-scroll">

            <table class="table table-striped table-responsive table-hover">
                <tr>
                    <th>NO.</th>
                    <th>TGL KONFIRMASI</th>
                    <th>NAMA/NAMA TEAM</th>
                    <?php echo $h_pil;?>
                    <th>EMAIL</th>
                    <th>NO HP</th>
                    <th>PEMILIK REKENING</th>
                    <th>BUKTI PEMBAYARAN</th>
                    <?php echo $hsr;?>
                    <th <?= $hidden;?>>SETTING</th>

                </tr>
<?php

            $sql = $conn->query("SELECT * FROM konfirmasi_pembayaran WHERE nama_content='$nama_content' ORDER BY $urut");

            if($sql->num_rows > 0){
                
                $no = 1;
                while($row = $sql->fetch_assoc()){
              
                    $email = $row['email'];
                    $sqlb = $conn->query("SELECT * FROM $nama_tabel WHERE email='$email'");
                    $rowb = $sqlb->fetch_assoc();
?>
                
                <tr>
                    <td><center><?php echo $no;?></center></td>
                    <td><?php echo $row['waktu_upload'];?></td>
                    <td><?php echo $rowb['nama_team'].$rowb['nama'];?></td>
<?php
                    if ($id_content == 2) {
                    echo '<td>'.$rowb['pilihan'].'</td>';
                    }
?>
                    <td><?php echo $row['email'];?></td>
                    <td><?php echo $rowb['no_hp'];?></td>
                    <td><?php echo $row['pemilik_rekening'];?></td>
<?php               echo '
                    <td>
                        <a href="konfirmasi_pembayaran/'.$nama_folder.'/'.$row['file_name'].'" title="'.$row['file_name'].'" target="_blank">'.$row['file_name'].'</a>
                    </td>';
                    if($id_content == 3){
                    
                        echo '
                    <td>
                        <a href="konfirmasi_pembayaran/'.$nama_folder.'/'.$rowb['file_name'].'" title="'.$rowb['file_name'].'" target="_blank">'.$rowb['file_name'].'</a>
                    </td>';
                    }
                    
                    if ($data_admin['status']==1 OR $data_admin['pj_content']==2) {
                        echo '
                    <td>                    
                        <center><a href="?id_content='.$id_content.'&aksi=delete&id='.$row['id'].'" title="Hapus Data" class="btn btn-danger" onclick="return confirm(\'Yakin?\')">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                        </a></center>
                    </td>';
                    }
?>              
                </tr>
<?php
                $no++;
                }
            }else{
            
            echo '<tr><td colspan="7">Tidak ada data</td></tr>';
            }
      
?>
                
            </table>
        </div>

<?php
        }
    }
?>
<?php require_once "footer.php";?>