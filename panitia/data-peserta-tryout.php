<?php 
require_once "../functions/config.php";
require_once "../functions/perhitungan_tryout.php";
$title = 'Data Peserta Try Out SBMPTN';
require_once "header.php";
?>

        <div class="container container-body">

            <h1>Data Peserta Try Out SBMPTN</h1>
            
            <hr>

<?php
    if(!$_SESSION['admin']){

        echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';

    }else{

        if($data_admin['status'] != 1 && $data_admin['status'] != 2 && $data_admin['status'] != 3){
            
            echo '<div class="alert alert-danger">Anda tidak memiliki akses untuk membuka halaman ini.</div>';
        
        }else{

            if (isset($_GET['id'])) {
                
                $id = $_GET['id'];
                $sql = $conn->query("SELECT * FROM tryout_sbmptn_parsial WHERE id = '$id'");
                $data_peserta = $sql->fetch_assoc();
                $email = $data_peserta['email'];
                $sql_p = $conn->query("SELECT * FROM konfirmasi_pembayaran WHERE nama_content = 'tryout_sbmptn' AND email = '$email'");
                $sql_h = $conn->query("SELECT * FROM hasil_tryout_sbmptn WHERE id_peserta = '$id'");
                $data_hasil = $sql_h->fetch_assoc();

            }

?>
            <div class="row">
                
                <div class="col-sm-12">
                
                    <div class="panel panel-default">
                  
                        <!-- Default panel contents -->
                        <table class="table">
                            <tr><th>Nama Lengkap</th><th>:</th><td><?= $data_peserta['nama']; ?></td><th>Pilihan</th><th>:</th><td><?= $data_peserta['pilihan']; ?></td></tr>
                            <tr><th>Nomor Peserta</th><th>:</th><td><?= $data_peserta['no_peserta']; ?></td><th>Kehadiran</th><th>:</th><td><?php if($data_peserta['kehadiran']==1){ echo 'Hadir';}else{ echo 'Tidak Hadir';} ?></td></tr>
                            <tr><th>Tanggal Daftar</th><th>:</th><td><?= $data_peserta['tgl_daftar']; ?></td><th>Email</th><th>:</th><td><?= $data_peserta['email']; ?></td></tr>
                            <tr><th>Tempat, Tanggal Lahir</th><th>:</th><td><?= $data_peserta['tempat_lahir'].', '.$data_peserta['tgl_lahir']; ?></td><th>No HP</th><th>:</th><td><?= $data_peserta['no_hp']; ?></td></tr>
                            <tr><th>Alamat</th><th>:</th><td><?= $data_peserta['alamat']; ?></td><th>Minat Jurusan & PTN</th><th>:</th><td><?= $data_peserta['minat']; ?></td></tr>
                            <tr><th>Sekolah</th><th>:</th><td><?= $data_peserta['sekolah']; ?></td><th rowspan="2">Bukti Pembayaran</th><th rowspan="2">:</th><td rowspan="2"><?php
                                    if($sql_p->num_rows > 0){ 

                                        $data_p = $sql_p->fetch_assoc();
                                        echo '<a href="konfirmasi_pembayaran/tryout_sbmptn/'.$data_p['file_name'].'"><img src="konfirmasi_pembayaran/tryout_sbmptn/'.$data_p['file_name'].'" class="pembayaran" alt="Bukti Pembayan" title="Bukti Pembayan"></a>';
                                    }else{
                                        echo '<b>Belum Lunas</b>';
                                    }
                                    ?></td></tr>
                            <tr><th>Jurusan</th><th>:</th><td><?= $data_peserta['jurusan']; ?></td></tr>
                            <tr><th colspan="6"></th></tr>
                            <tr><th>Soal Benar</th><th>:</th><td colspan="4"><?= $data_hasil['benar'];?></td></tr>
                            <tr><th>Soal Salah</th><th>:</th><td colspan="4"><?= $data_hasil['salah'];?></td></tr>
                            <tr><th>Soal Kosong</th><th>:</th><td colspan="4"><?= $data_hasil['kosong'];?></td></tr>
                            <tr><th>Total</th><th>:</th><td colspan="4"><?= $data_hasil['total'];?></td></tr>
                            <tr><th>Nilai</th><th>:</th><td colspan="4"></td></tr>
                            <tr><td colspan="3"><a href="edit_data_to.php?id=<?= $data_peserta['id'];?>" title="Ubah Data" class="btn btn-primary">
                            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Edit
                        </a> <a href="input-nilai.php?id=<?= $data_peserta['id'];?>" title="Ubah Data" class="btn btn-primary">
                            <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Input Nilai
                        </a></td></tr>
                        </table>
                    
                    </div>
                
                </div>
            
            </div>

<?php 
		}
	}
require_once "footer.php";?>