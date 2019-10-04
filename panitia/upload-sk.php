<?php 
require_once "../functions/config.php";
$title = 'Syarat dan Ketentuan';
require_once "header.php";
?>

        <div class="container container-body">
        
            <h1>Upload Syarat dan Ketentuan</h1>
        
            <hr>
<?php
    if(!$_SESSION['admin']){

                echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';

    }else{

        if($data_admin['status'] == 1 OR $data_admin['status'] == 2){
            
                echo '
            <div class="row">
                  
                <div class="col-md-8 col-md-offset-2">
                
                    <form class="form-horizontal" method="post" enctype="multipart/form-data">
                
                        <div class="form-group">
                            
                            <div class="col-md-3">
                            
                                <select name="kode-sk" class="form-control" required>
                                    <option> </option>
                                    <option value="1">1. Futsal</option>
                                    <option value="2">2. Tryout SBMPTN</option>
                                    <option value="3">3. Olimpiade</option>
                                    <option value="4">4. Singcomp</option>
                                </select>
                            
                            </div>
                        
                            <div class="col-md-7">
                                
                                <input type="file" name="myFile" class="filestyle" data-icon="true">
                            
                            </div>
                            
                            <div class="col-md-2">
                            
                                <input type="submit" name="upload" class="btn btn-primary" value="Upload">
                            
                            </div>
                          
                        </div>
                    
                    </form>

                </div>

            </div>
            ';

            if(isset($_GET['aksi']) == 'delete'){

                $id = $_GET['id'];
                $cek = $conn->query("SELECT * FROM sk WHERE id='$id'");
                $select = $cek->fetch_assoc();

                if($cek->num_rows > 0){

                    if(file_exists('sk/'.$select['file_name'].'')){
                        
                        $delete = unlink('sk/'.$select['file_name'].'');
                    
                        if($delete){
        
                            $delete_data = $conn->query("DELETE FROM sk WHERE id='$id'");
        
                            if($delete_data){

                                echo '<div class="alert alert-success">SK berhasil dihapus.</div>';

                            }else{
                                echo '<div class="alert alert-info">Data SK gagal dihapus.</div>';
                            }
                        }else{

                            echo '<div class="alert alert-info">SK gagal dihapus.</div>';
                        }
                    }else{
                        echo '<div class="alert alert-info">File tidak ada.</div>';
                    }
                }else{

                    echo '<div class="alert alert-info">Data tidak ditemukan.</div>';
                }
            }

        }else{
          $hidden='hidden';
        }

            // definisi folder upload
        define("UPLOAD_DIR", "sk/");

        if (!empty($_FILES["myFile"])) {
                
            $myFile = $_FILES["myFile"];
            $ext    = pathinfo($_FILES["myFile"]["name"], PATHINFO_EXTENSION);
            $size   = $_FILES["myFile"]["size"];
            $tgl    = date("Y-m-d");
              
            if ($myFile["error"] !== UPLOAD_ERR_OK) {
            
                echo '<div class="alert alert-warning">Ada error.</div>';
                exit;
            }

            // filename yang aman
            $name = preg_replace("/[^A-Z0-9._-]/i", "_", $myFile["name"]);

            // mencegah overwrite filename
            $i = 0;
            $parts = pathinfo($name);
            
            while (file_exists(UPLOAD_DIR . $name)) {
            
                $i++;
                $name = $parts["filename"] . "-" . $i . "." . $parts["extension"];
            }

            if($_POST['upload']){

                $kode_sk  = $conn->real_escape_string($_POST['kode-sk']);

                if($kode_sk==1){
                  $nama_content = 'Futsal';
                }
                if($kode_sk==2){
                  $nama_content = 'Tryout SBMPTN';
                }
                if($kode_sk==3){
                  $nama_content = 'Olimpiade';
                }
                if($kode_sk==4){
                  $nama_content = 'Singcomp';
                }
                // upload file
                if(empty(trim($kode_sk))){

                    echo '<div class="alert alert-warning">Pilih salah satu konten</div>';

                }else{
                    
                    $sql_cek = $conn->query("SELECT * FROM sk WHERE kode_sk='$kode_sk'");

                    if ($sql_cek->num_rows == 0) {
                    
                    
                        $success = move_uploaded_file($myFile["tmp_name"], UPLOAD_DIR . $name);

                        if (!$success) { 
            
                            echo '<div class="alert alert-warning">Gagal upload file.</div>';
                            exit;
            
                        }else{

                            $insert = $conn->query("INSERT INTO sk (kode_sk, file_name, file_size, file_type, nama_content) VALUES('$kode_sk','$name', '$size', '$ext', '$nama_content')");
                
                            if($insert){
                
                                echo '<div class="alert alert-success">File berhasil di upload.</div>';

                            }else{
                    
                                echo '<div class="alert alert-warning">Gagal upload file ke database.</div>';
                                exit;
                
                            }
                        }
                    }else{
                                echo '<div class="alert alert-danger">Kan udah gua bilang, <b>HAPUS DULU BARU UPLOAD</b>.</div>';
                    }
                }
                // set permisi file
                chmod(UPLOAD_DIR . $name, 0644);
            }   
        }
        
        function bytesToSize($bytes, $precision = 2){  
        
            $kilobyte = 1024;
            $megabyte = $kilobyte * 1024;
            $gigabyte = $megabyte * 1024;
            $terabyte = $gigabyte * 1024;
           
            if (($bytes >= 0) && ($bytes < $kilobyte)) {
              return $bytes . ' B';
            } elseif (($bytes >= $kilobyte) && ($bytes < $megabyte)) {
              return round($bytes / $kilobyte, $precision) . ' KB';
            } elseif (($bytes >= $megabyte) && ($bytes < $gigabyte)) {
              return round($bytes / $megabyte, $precision) . ' MB';
            } elseif (($bytes >= $gigabyte) && ($bytes < $terabyte)) {
              return round($bytes / $gigabyte, $precision) . ' GB';
            } elseif ($bytes >= $terabyte) {
              return round($bytes / $terabyte, $precision) . ' TB';
            } else {
              return $bytes . ' B';
            }
        }

?>

            <table class="table table-striped table-responsive table-hover">
                
                <tr>
                    <th>NO.</th>
                    <th>NAME CONTENT</th>
                    <th>FILE NAME</th>
                    <th>FILE SIZE</th>
                    <th>FILE TYPE</th>
                    <th>DOWNLOAD</th>
                    <th <?php echo $hidden; ?>><center>DELETE</center></th>
                </tr>
      <?php

      $sql = $conn->query("SELECT * FROM sk ORDER BY id DESC");
      if($sql->num_rows > 0){
        $no = 1;
        while($row = $sql->fetch_assoc()){
          echo 
                '
                <tr>
                    <td>'.$no.'</td>
                    <td>'.$row['nama_content'].'</td>
                    <td>'.$row['file_name'].'</td>
                    <td>'.bytesToSize($row['file_size']).'</td>
                    <td>'.$row['file_type'].'</td>
                    <td>
                        <a href="sk/'.$row['file_name'].'" class="btn btn-primary btn-sm">
                            <span class="glyphicon glyphicon-download" aria-hidden="true"></span> Download
                        </a>
                    </td>
                    <td '.$hidden.'>
                        <center>
                            <a href="?aksi=delete&id='.$row['id'].'" title="Hapus SK '.$row['nama_content'].'" onclick="return confirm(\'Yakin?\')" class="btn btn-danger">
                                <span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Delete
                            </a>
                        </center>
                    </td>
                </tr>
                ';
          $no++;
        }

        if($_GET['hapus']){
            // dapatkan nama file
          $sql_1= $conn->query("SELECT * FROM sk WHERE kode_sk='$kose_sk'");
          $data_1=$sql_1->fetch_assoc();   
      }
      }else{
        echo 
                '<tr><td colspan="6">Tidak ada data</td></tr>';
      }

      ?>
    
            </table>

<?php
    }
?>
<?php 
require_once "footer.php";
?>