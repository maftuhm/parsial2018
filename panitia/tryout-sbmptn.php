<?php 
require_once "../functions/config.php";
$math_active = 'class="active"';
$title = 'Try Out SBMPTN';
require_once "header.php";
?>

        <div class="container-body">
            
            <h1>Try Out SBMPTN</h1>
            
            <hr>
            
<?php
            
    if(!$_SESSION['admin']){
            
        echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';
            
    }else{

        if($data_admin['status'] != 1 && $data_admin['status'] != 2 && $data_admin['status'] != 4){
                
            echo '<div class="alert alert-danger">Anda tidak memiliki akses untuk membuka halaman ini.</div>';
        
        }else{

            if($data_admin['status'] == 1 OR $data_admin['pj_content']==2){

                if(isset($_GET['aksi']) == 'delete'){

                    $id = $_GET['id'];
                    $cek = $conn->query("SELECT * FROM tryout_sbmptn_parsial WHERE id='$id'");

                    if($cek->num_rows > 0){

                        $delete = $conn->query("DELETE FROM tryout_sbmptn_parsial WHERE id='$id'");
                        if($delete){
                            
                            echo '<div class="alert alert-success">Data berhasil dihapus.</div>';
                        }else{
                            echo '<div class="alert alert-info">Data team gagal dihapus.</div>';
                        }
                    }
                }
            }else{
                
                $hidden= 'hidden';
            }
            if (isset($_GET['sort_by'])) {
                $urut = $_GET['sort_by'];
                if ($urut == 'id_pilihan') {
                    $url_print = '?sort_by=pilihan';                    
                }else{

                    $url_print = '?sort_by=id';                    
                }
            }else{
                $urut = 'id';
            }
?>
            <form class="form-inline" method="GET">
                
                    <!-- Single button -->
                <div class="btn-group">
                    
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Tryout SBMPTN <span class="caret"></span>
                    </button>
                    
                    <ul class="dropdown-menu">
                        <li><a href="">Tryout SBMPTN</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="olim.php">Olimpiade Matematika</a></li>
                    </ul>
                </div>

                <div class="form-group select">
                
                    <select name="sort_by" class="form-control" onchange="form.submit()">
                        <?php $sort_by = (isset($_GET['sort_by']) ? strtolower($_GET['sort_by']) : NULL);  ?>
                        <option value="id" <?php if($sort_by == 'id'){ echo 'selected'; } ?>>Urut Berdasarkan Tanggal</option>
                        <option value="id_pilihan" <?php if($sort_by == 'id_pilihan'){ echo 'selected'; } ?>>Urut Berdasarkan Pilihan</option>
                    </select>
                
                </div>
<?php       
            if ($data_admin['status']==1 OR $data_admin['pj_content']==2) {
                echo'
                <div class="form-group" style="margin-left:8px;">

                    <a href="print/print_tryout.php'.$url_print.'" class="btn btn-default" target="_blank"><span class="glyphicon glyphicon-print" aria-hidden="true"></span></a>
                </div>
                ';
            }
?>            
            </form>
            <br>

        <div class="table-scroll">

            <table class="table table-responsive table-striped table-hover">
              
                <tr>
                    <th>NO.</th>
                    <th>TGL DAFTAR</th>
                    <th>NAMA</th>
                    <th>NO PESERTA</th>
                    <th>TEMPAT & TGL LAHIR</th>
                    <th>ALAMAT</th>
                    <th>SEKOLAH</th>
                    <th>JURUSAN</th>
                    <th>PILIHAN</th>
                    <th>EMAIL</th>
                    <th>NO. WA</th>
                    <th>MINAT JURUSAN & PTN</th>
                    <th>PEMBAYARAN</th>
                    <th>KEHADIRAN</th>
                    <th <?php echo $hidden;?>>SETTING</th>
                </tr>
<?php
            $sql = $conn->query("SELECT * FROM tryout_sbmptn_parsial ORDER BY $urut");
            
            if($sql->num_rows > 0){
                $no = 1;
                
                while($row = $sql->fetch_assoc()){
                  
                    $email = $row['email'];
                    $sqlb = $conn->query("SELECT * FROM konfirmasi_pembayaran WHERE email='$email' AND nama_content='tryout_sbmptn'");
                    $rowb = $sqlb->fetch_assoc();
                    
                    if($sqlb->num_rows == 0){
                        
                        $row['pembayaran']='';
                    }
                    if($row['kehadiran'] == 1){
                        $hadir = 'Hadir';
                    }else{
                        $hadir = '';
                    }

                    echo '
                <tr>
                    <td><center>'.$no.'</center></td>
                    <td>'.$row['tgl_daftar'].'</td>
                    <td><a href="data-peserta-tryout.php?id='.$row['id'].'" target="_blank">'.$row['nama'].'</a></td>
                    <td>'.$row['no_peserta'].'</td>
                    <td>'.$row['tempat_lahir'].', '.$row['tgl_lahir'].'</td>
                    <td>'.$row['alamat'].'</td>
                    <td>'.$row['sekolah'].'</td>
                    <td>'.$row['jurusan'].'</td>
                    <td>'.$row['pilihan'].'</td>
                    <td>'.$row['email'].'</td>
                    <td>'.$row['no_hp'].'</td>
                    <td>'.$row['minat'].'</td>
                    <td>
                        <a href="konfirmasi_pembayaran/tryout_sbmptn/'.$rowb['file_name'].'" title="Lihat Bukti Pembayaran">
                            <b class="lunas">'.$row['pembayaran'].'</b>
                        </a>
                    </td>
                    <td><b class="lunas">'.$hadir.'</b></td>';          
                    if($data_admin['status']==1 OR $data_admin['pj_content']==2 OR $data_admin['status']==4){ 
                        echo
                    '
                    <td style="text-align:center;">
                        <a href="edit_data_to.php?id='.$row['id'].'" title="Ubah Data" class="btn-sm btn-primary btn-edit" target="_blank">
                            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Edit
                        </a>
                        <a href="input-nilai.php?id='.$row['id'].'" title="Input Nilai" class="btn-sm btn-primary btn-edit" target="_blank">
                            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Input Nilai
                        </a>';
                        if ($data_admin['status']==1 OR $data_admin['pj_content']==2) {

                            echo '
                    
                        <a href="?aksi=delete&id='.$row['id'].'" title="Hapus Data" class="btn-sm btn-danger btn-edit" onclick="return confirm(\'Yakin?\')">
                            <span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Hapus
                        </a>';
                        }
                        echo '
                    </td>';
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
        </div>

<?php
        }
    }
?>

<?php 
require_once "footer.php";
?>