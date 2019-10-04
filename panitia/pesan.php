<?php 
require_once "../functions/config.php";
$mess_active = 'class="active"';
$reload = '<meta http-equiv="refresh" content="120">';
$title = 'Pesan';
require_once "header.php";
?>

        <div class="container container-body">

            <h1>Pesan</h1>

            <hr>
<?php

    if(!$_SESSION['admin']){

      echo '<div class="alert alert-danger"><center>Anda harus login untuk membuka halaman ini.</center></div>';

    }else{

        if($data_admin['status'] != 1){  

            echo '<div class="alert alert-danger"><center>Anda tidak memiliki akses untuk membuka halaman ini.</center></div>';

        }else{

            if(isset($_GET['aksi']) == 'delete'){
            
                $id = $_GET['id'];
                $cek = $conn->query("SELECT * FROM contact_us WHERE id='$id'");
            
                if($cek->num_rows == 0){
            
                    echo '<div class="alert alert-info">Pesan tidak ditemukan.</div>';
                }else{
            
                    $delete = $conn->query("DELETE FROM contact_us WHERE id='$id'");
            
                    if($delete){
            
                        echo '<div class="alert alert-danger">Pesan berhasil dihapus.</div>';
                    }else{
            
                        echo '<div class="alert alert-info">Pesan gagal dihapus.</div>';
                    }
                }
            }
?>

            <div class="row table-scroll">

                <table class="table table-responsive table-striped table-hover">

                    <tr>
                        <th>NO.</th>
                        <th>TANGGAL - JAM</th>
                        <th>NAMA LENGKAP</th>
                        <th>EMAIL</th>
                        <th>SUBJECT</th>
                        <th>PESAN</th>
                        <th>SETTING</th>
                    </tr>
<?php

            $sql = $conn->query("SELECT * FROM contact_us ORDER BY id DESC");

            if($sql->num_rows > 0){

                $no = 1;

                while($row = $sql->fetch_assoc()){

                    $email = $row['email'];

                    echo '
                    <tr>
                        <td><center>'.$no.'</center></td>
                        <td>'.$row['tgl'].'</td>
                        <td>'.$row['nama'].'</td>
                        <td>'.$row['email'].'</td>
                        <td>'.$row['subject'].'</td>
                        <td>'.$row['pesan'].'</td>
                        <td>
                            <a href="?aksi=delete&id='.$row['id'].'" title="Hapus" onclick="return confirm(\'Yakin?\')">
                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
                            </a>
                        </td>
                    </tr>
                  ';

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