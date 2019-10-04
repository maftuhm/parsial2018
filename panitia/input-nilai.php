<?php 
require_once "../functions/config.php";
require_once "../functions/perhitungan_tryout.php";
$math_active = 'class="active"';
$title = 'Input Nilai Try Out SBMPTN';
require_once "header.php";
?>

        <div class="section">
        
            <div class="container container-body" >

<?php

?>
                <form class="form-horizontal" acton="" id="submit_form" method="POST">
    
                    <div class="row">
    
                        <div class="col-sm-12">
    
                            <h2><a href="tryout-sbmptn.php">Try Out SBMPTN</a> <span class="glyphicon glyphicon-chevron-right"></span><span class="glyphicon glyphicon-chevron-right"></span> <a href="">Data Peserta</a> <span class="glyphicon glyphicon-chevron-right"></span><span class="glyphicon glyphicon-chevron-right"></span> <a href="">Input Nilai</a></h2>
                            <hr>    
                        </div>
    
                    </div>
<?php
    if(!$_SESSION['admin']){

        echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';

    }else{

        if($data_admin['status'] != 1 && $data_admin['pj_content'] !=2 && $data_admin['status'] != 4){
            
            echo '<div class="alert alert-danger">Anda tidak memiliki akses untuk membuka halaman ini.</div>';
        
        }else{

            $id = $_GET['id'];
            $sql = $conn->query("SELECT * FROM tryout_sbmptn_parsial WHERE id='$id'");
            $data= $sql->fetch_assoc();
            $nama = $data['nama'];
            $email = $data['email'];
            $no_hp = $data['no_hp'];
            $sql_h = $conn->query("SELECT * FROM hasil_tryout_sbmptn WHERE id_peserta = '$id'");
            $data_hasil = $sql_h->fetch_assoc();

            if ($_POST['simpan']) {

                $benar   = $conn->real_escape_string($_POST['benar']);
                $salah   = $conn->real_escape_string($_POST['salah']);
                $kosong   = $conn->real_escape_string($_POST['kosong']);
                $total = total($benar, $salah);

                $tgl    = date("Y-m-d");

                if ($sql_h->num_rows > 0) {

                    $update = $conn->query("UPDATE hasil_tryout_sbmptn SET benar='$benar', salah='$salah', kosong='$kosong', total='$total' WHERE id_peserta='$id'");

                }else{

                    $update = $conn->query("INSERT INTO hasil_tryout_sbmptn (id_peserta, nama, email, no_hp, benar, salah, kosong, total, nilai) VALUES ('$id', '$nama', '$email', '$no_hp', '$benar', '$salah', '$kosong', '$total', '0')");

                }

                if($update){

                    echo '
                        <div class="alert alert-success">
                            Input data peserta berhasil. 
                        </div>
                </form>';
                    require_once "footer.php";
                        exit;
                }else{
                    echo '
                        <div class="alert alert-danger">
                            Input data peserta gagal.
                        </div>';
                }
            }

?>

                    <div class="row">

                        <div class="form-group">

                            <label class="control-label col-sm-offset-1 col-sm-2">Nama </label>
                            <div class="col-sm-6">
                                <input type="text" class="form-control" name="nama" value="<?php echo $data['nama'];?>" disabled placeholder="Nama Lengkap" />
                            </div>
                        
                        </div>

                        <div class="form-group">
                            
                            <label class="control-label col-sm-offset-1 col-sm-2">Nilai Benar </label>
                            
                            <div class="col-sm-3">
                            
                                <input type="number" class="form-control" name="benar" value="<?php echo $data_hasil['benar'];?>" placeholder="Nilai Benar" />

                            </div>

                        </div>

                        <div class="form-group">
                            
                            <label class="control-label col-sm-offset-1 col-sm-2">Nilai Salah </label>
                            
                            <div class="col-sm-3">
                            
                                <input type="number" class="form-control" name="salah" value="<?php echo $data_hasil['salah'];?>" placeholder="Nilai Salah" />

                            </div>

                        </div>

                        <div class="form-group">
                            
                            <label class="control-label col-sm-offset-1 col-sm-2">Nilai Kosong </label>
                            
                            <div class="col-sm-3">
                            
                                <input type="number" class="form-control" name="kosong" value="<?php echo $data_hasil['kosong'];?>" placeholder="Nilai Kosong" />

                            </div>

                        </div>

                        <div class="form-actions">

                            <div class="row">

                                <div class="col-sm-offset-3 col-sm-3">

                                    <?= '<input class="btn btn-primary" type="submit" name="simpan" value="Simpan" onclick="return confirm(\'Apakah data anda sudah benar?\')" />';?>

                                    <br>

                                </div>

                            </div>
                              
                        </div>

                    </div>

                </form>


<?php
        }
    }
?>
<?php require_once "footer.php";?>