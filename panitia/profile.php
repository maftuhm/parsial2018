<?php 
require_once "../functions/config.php";
$title = 'Profile';
require_once "header.php";
?>

        <div class="container container-body">

            <h1>Profile</h1>

            <hr>

<?php

    if($_GET['id']){

        $id = $_GET['id'];

        if($data_admin['status'] != 1){

            echo '<div class="alert alert-danger">Url salah</div>';
            exit;

        }else{

            $sql = $conn->query("SELECT * FROM admin WHERE id='$id'");
            $row = $sql->fetch_assoc();
            $nama = $row['nama'];
            $username = $row['username'];
            $email = $row['email'];
            $no_hp = $row['no_hp'];
            $hak_akses = $row['hak_akses'];
            $add = '<tr><th>Penanggung Jawab</th><th>:</th><td>'.$row['pj_content'].'</td></tr><tr>';
        }
    }else{

        $nama = $data_admin['nama'];
        $username = $data_admin['username'];
        $email = $data_admin['email'];
        $no_hp = $data_admin['no_hp'];
        $hak_akses = $data_admin['hak_akses'];
        $pj = $data_admin['pj_content'];

        if ($pj != 0 ) {
            if ($pj == 1.1 OR $pj == 1.2) {
                $content = 'Futsal';
            }
            if ($pj == 2) {
                $content = 'Try Out SBMPTN';
            }
            if ($pj == 3) {
                $content = 'Olimpiade';
            }
            if ($pj == 4) {
                $content = 'Singcomp';
            }

            $add = '<tr><th>Penanggung Jawab</th><th>:</th><td>'.$content.'</td></tr><tr>';
        }
    }

?>

            <div class="row">

                <div class="col-md-6 col-md-offset-3">

                    <table class="table">

                        <tr><th>NAMA LENGKAP</th><th>:</th><td><?php echo $nama;?></td></tr>
                        <tr><th>USERNAME</th><th>:</th><td><?php echo $username;?></td></tr>
                        <tr><th>EMAIL</th><th>:</th><td><?php echo $email;?></td></tr>
                        <?php echo $add;?>
                        <tr><th>NO HP</th><th>:</th><td><?php echo $no_hp;?></td></tr>
                        <tr><th>HAK AKSES</th><th>:</th><td><?php echo $hak_akses; ?></td></tr><tr>
                        <th>PASSWORD</th><th>:</th><td><a href="ganti.php" class="btn btn-primary">Ganti</a></td></tr>

                    </table>

                </div>

            </div>

<?php 

require_once "footer.php";

?>