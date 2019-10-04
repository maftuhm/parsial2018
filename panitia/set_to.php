<?php 
require_once "../functions/config.php";
$index_active = 'class="active"';
$title = 'Home';
require_once "header.php";
?>

<?php
    
    $sql1 = $conn->query("SELECT * FROM tryout_sbmptn_parsial WHERE id_pilihan=1");
    
    while ($data1 = $sql1->fetch_assoc()) {
        $email1 = $data1['email'];
        $conn->query("UPDATE konfirmasi_pembayaran SET pilihan=1 WHERE email='$email1' AND pilihan=0");        
    }
    $sql2 = $conn->query("SELECT * FROM tryout_sbmptn_parsial WHERE id_pilihan=2");
    
    while ($data2 = $sql2->fetch_assoc()) {
        $email2 = $data2['email'];
        $conn->query("UPDATE konfirmasi_pembayaran SET pilihan=2 WHERE email='$email2' AND pilihan=0");        
    }

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