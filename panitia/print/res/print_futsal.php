<style type="text/css">
<!--
table { vertical-align: top; }
tr    { vertical-align: top; }
td    { vertical-align: top; }
}
-->
</style>
<page backcolor="#FEFEFE" style="font-size: 12pt"  backtop="6mm" backbottom="6mm" backleft="8mm" backright="8mm">
    <page_footer>
        <table style="width: 100%;">
            <tr>
                <td style="text-align: left; width: 33%; padding-left: 30px;">www.parsial.cf</td>
                <td style="text-align: center; width: 34%">&copy; Parsial HIMATIKA 2018</td>
                <td style="text-align: right;width: 33%; padding-right: 25px;"><?php echo date('d/m/Y'); ?> - page [[page_cu]]/[[page_nb]]</td>
            </tr>
        </table>
    </page_footer>
    <table cellspacing="0">
        <tr style="width: 100%; text-align: center; font-size: 14px">
            <td style="width: 20%;">
                <img style="width: 75%;" src="../../img/logo-uin.jpg" alt="Logo"><br>
            </td>
            <td style="width: 60%;">
                <p>HIMPUNAN MAHASISWA MATEMATIKA<br>PROGRAM STUDI MATEMATIKA<br>FAKULTAS SAINS DAN TEKNOLOGI<br>UIN SYARIF HIDAYATULLAH JAKARTA<br>Jalan Ir. Juanda Nomor 95, Ciputat, Tangerang Selatan, Banten, 15412</p>
            </td>
            <td style="width: 20%;">
                <img style="width: 60%;" src="../../img/logo-himatika-noshadow.png" alt="Logo"><br>
            </td>
        </tr>
        <!--tr style="width: 100%; text-align: center; font-size: 12px;background-color: #337ab7;">
            <td style="width: 100%; color: #000000; padding-top: 5px;padding-bottom: 5px;" colspan="3">parsialhimatika.uinjkt@gmail.com &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+62896-1080-4184/+62838-9955-1720 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;himatika.fst.uinjkt.ac.id</td>
        </tr-->
    </table>
    <hr>
    <br>
<?php
    if(isset($_GET['id'])){

        $id =$_GET['id'];
    
        $sql    = $conn->query("SELECT * FROM futsal_parsial WHERE id='$id'");
        $data   = $sql->fetch_assoc();
        $email  = $data['email'];
        $sql_p   = $conn->query("SELECT * FROM data_pemain_futsal WHERE email='$email' ORDER BY id");
    }
?>
    <table cellspacing="0" style="width: 100%; text-align: left; font-size: 11pt; ">
        <tr>
            <td style="width: 5%"></td>
            <td style="width:15%;">Nama Team</td>
            <td style="width:5%; ">:</td>
            <td style="width:50%"><?php echo $data['nama_team']?></td>
        </tr>
        <tr>
            <td style="width: 5%"></td>
            <td style="width:15%;">Universitas</td>
            <td style="width:5%; ">:</td>
            <td style="width:50%"><?php echo $data['universitas']?></td>
        </tr>
        <tr>
            <td style="width: 5%"></td>
            <td style="width:15%;">Fakultas</td>
            <td style="width:5%; ">:</td>
            <td style="width:50%"><?php echo $data['fakultas']?></td>
        </tr>
        <tr>
            <td style="width: 5%"></td>
            <td style="width:15%;">Jurusan</td>
            <td style="width:5%; ">:</td>
            <td style="width:50%"><?php echo $data['jurusan']?></td>
        </tr>
        <tr>
            <td style="width: 5%"></td>
            <td style="width:15%;">Official</td>
            <td style="width:5%; ">:</td>
            <td style="width:50%"><?php echo $data['official']?></td>
        </tr>
        <tr>
            <td style="width: 5%"></td>
            <td style="width:15%;">Email</td>
            <td style="width:5%; ">:</td>
            <td style="width:50%"><?php echo $data['email']?></td>
        </tr>
        <tr>
            <td style="width: 5%"></td>
            <td style="width:15%;">Nomor Hp</td>
            <td style="width:5%; ">:</td>
            <td style="width:50%"><?php echo $data['no_hp']?></td>
        </tr>
        <tr>
            <td style="width: 5%"></td>
            <td style="width:15%;">Kategori</td>
            <td style="width:5%; ">:</td>
            <td style="width:50%"><?php echo $data['kategori']?></td>
        </tr>
    </table>
    <br>
    <br>
    <table cellspacing="0" style="width: 100%;padding: 1px; width: 100%;font-size: 11pt; ">
        <tr>
            <th style="width: 5%;border: solid 1px #000000; padding: 2px; text-align: center">No</th>
            <th style="width: 35%;border: solid 1px #000000; padding: 2px; text-align: center">Nama Pemain / TTD</th>
            <th style="width: 30%;border: solid 1px #000000; padding: 2px; text-align: center">Foto</th>
            <th style="width: 30%;border: solid 1px #000000; padding: 2px; text-align: center">Kartu Identitas</th>
        </tr>
<?php
    if ($sql_p->num_rows > 0) {
    
        $no=1;
        while ($data_pemain = $sql_p->fetch_assoc()) {
?>
        <tr>
            <td style="width: 3%;border: solid 1px #000000; padding: 5px;text-align: center"><?php echo $no;?></td>
            <td style="width: 30%;border: solid 1px #000000; padding-top: 5px">&nbsp;&nbsp;<?php echo $data_pemain['nama_pemain'];?><br><hr></td>
            <td style="width: 30%;border: solid 1px #000000; padding: 2px;"><?php echo '<img src="../foto_peserta/futsal/'.$data_pemain['nama_foto'].'" title="'.$pemain['nama_foto'].'" style="width:200px;" alt="'.$data_pemain['nama_foto'].'"/>';?></td>
            <td style="width: 30%;border: solid 1px #000000; padding: 2px;"><?php echo '<img src="../foto_peserta/futsal/'.$data_pemain['nama_ktm'].'" title="'.$pemain['nama_ktm'].'" style="width:200px;" alt="'.$data_pemain['nama_ktm'].'"/>';?></td>
        </tr>
<?php
        $no++;
        }
    }else{
        echo '<tr><td style="width: 100%;border: solid 1px #000000; padding: 5px;text-align: center" colspan=4>Tidak ada data</td></tr>
        ';
    }
?>
    </table>
</page>