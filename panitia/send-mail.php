<?php 
require_once "../functions/config.php";
$title = 'Kirim Email';
require_once "header.php";
?>
    <div class="container index">
        <h1><a href="">Kirim Email</a></h1>
        <hr>
<?php
    if(!$_SESSION['admin']){

        echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';

    }else{

        if($data_admin['status'] != 1 && $data_admin['status'] != 2){
            
            echo '<div class="alert alert-danger">Anda tidak memiliki akses untuk membuka halaman ini.</div>';
        }else{

            if($_POST['kirim']){

                $nama_pengirim = $conn->real_escape_string($_POST['nama-pengirim']);
                $nama_penerima = $conn->real_escape_string($_POST['nama-penerima']);
                $subject = $conn->real_escape_string($_POST['subject']);
                $email_pengirim = $data_admin['email'];
                $email = $conn->real_escape_string($_POST['email']);
                $pesan = $conn->real_escape_string($_POST['pesan']);
                $url = $conn->real_escape_string($_POST['url']);
                
                if (empty(trim($email)) OR empty(trim($pesan)) OR empty(trim($subject)) OR empty(trim($url)) OR empty(trim($nama_pengirim)) OR empty(trim($nama_penerima))){
                    
                    echo '<div class="alert alert-danger">ERROR : Harus diisi.</div>';
                }else{

                    include '../functions/kirim-email.php';

                    if(mail($email_penerima, $subject, $message, implode("\r\n", $headers))){

                        echo '<div class="alert alert-success">SUCCESS : Pesan anda berhasil dikirim.</div>';
                    }else{

                        echo '<div class="alert alert-danger">ERROR : Pesan anda gagal dikirim silahkan coba lagi.</div>';
                    }

                }
            }
?>
        <div class="row">
            <div class="col-sm-6">
                <form class="form-horizontal" id="submit_form" method="POST">

                    <div class="row">

                        <div class="form-group">

                            <label class="control-label col-sm-3">Nama Pengirim </label>

                            <div class="col-sm-9">

                                <input type="text" class="form-control" name="nama-pengirim" required placeholder="Nama Pengirim" />

                            </div>

                        </div>

                        <div class="form-group">

                            <label class="control-label col-sm-3">Nama Penerima </label>

                            <div class="col-sm-9">

                                <input type="text" class="form-control" name="nama-penerima" required placeholder="Nama Peserta/Official" />

                            </div>

                        </div>

                        <div class="form-group">

                            <label class="control-label col-sm-3">Email Penerima </label>

                            <div class="col-sm-9">

                                <input type="email" class="form-control" name="email" required placeholder="Email Penerima" />

                            </div>

                        </div>

                        <div class="form-group">

                            <label class="control-label col-sm-3">Subject </label>

                            <div class="col-sm-9">

                                <input type="text" class="form-control" name="subject" required placeholder="Subject" />

                            </div>

                        </div>
                        
                        <div class="form-group">

                            <label class="control-label col-sm-3">Url </label>

                            <div class="col-sm-9">

                                <input type="text" class="form-control" name="url" required placeholder="Url formulir yang akan dikirim" />

                            </div>

                        </div>

                        <div class="form-group">

                            <label class="control-label col-sm-3">Pesan </label>

                            <div class="col-sm-9">

                                <textarea type="text" rows="10" class="form-control" name="pesan" required placeholder="Pesan">Terimakasih telah berpartisipasi pada .... Parsial 2018. Team anda belum mengirimkan data pemain. Silahkan kirim data pemain melalui klik link dibawah ini.</textarea>

                            </div>

                        </div>

                        <div class="form-actions">

                            <div class="row">

                                <div class="col-sm-offset-3 col-sm-5">

                                    <input class="btn btn-primary" type="submit" name="kirim" />

                                    <br>

                                </div>

                            </div>

                        </div>

                    </div>

                </form>
            </div>
            <div class="col-sm-6">
                <div class="col-sm-offset-1 col-sm-10">

                    <div class="row">
                        <h4>Url Formulir</h4>
                        <hr>
                        <ul id="url">
                            <li class="margin">1. Futsal</li>
                            <li>Halaman ke-1 : http://bit.ly/futsalParsial2018</li>
                            <li>Halaman ke-2 : http://bit.ly/futsalhalaman2</li>
                            <li>Halaman ke-3 : http://bit.ly/futsalhalaman3</li>
                            <li><b>Pembayaran</b> : http://bit.ly/PembayaranFutsal</li>
                            <li class="margin">2. Try Out SBMPTN</li>
                            <li>http://bit.ly/tryoutParsial</li>
                            <li><b>Pembayaran</b> : http://bit.ly/PembayaranTo</li>
                            <li class="margin">3. Olimpiade Matematika</li>
                            <li>http://bit.ly/olimParsial</li>
                            <li><b>Pembayaran</b> :http://bit.ly/PembayaranOlimpiade</li>
                            <li class="margin">4. Sing Competition</li>
                            <li>http://bit.ly/singcomParsial</li>
                            <li>Solo Vocal : http://bit.ly/SoloVocal</li>
                            <li>Group Vocal : http://bit.ly/GroupVocal</li>
                            <li><b>Pembayaran</b> : http://bit.ly/PembayaranSingcomp</li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>

<?php
        }
    }
?>

<?php 
require_once "footer.php";
?>