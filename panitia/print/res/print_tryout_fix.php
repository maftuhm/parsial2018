<style type="text/css">
<!--
table { vertical-align: top; }
tr    { vertical-align: top; }
td    { vertical-align: top; }
}
-->
</style>
<page backcolor="#FEFEFE" style="font-size: 10pt" orientation="paysage" backtop="6mm" backbottom="6mm" backleft="5mm" backright="5mm">
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
                <img style="width: 50%;" src="../../img/logo-uin.jpg" alt="Logo"><br>
            </td>
            <td style="width: 60%;">
                <p>HIMPUNAN MAHASISWA MATEMATIKA<br>PROGRAM STUDI MATEMATIKA<br>FAKULTAS SAINS DAN TEKNOLOGI<br>UIN SYARIF HIDAYATULLAH JAKARTA<br>Jalan Ir. Juanda Nomor 95, Ciputat, Tangerang Selatan, Banten, 15412</p>
            </td>
            <td style="width: 20%;">
                <img style="margin-top:8px;width: 40%;" src="../../img/logo-himatika-noshadow.png" alt="Logo"><br>
            </td>
        </tr>
        <!--tr style="width: 100%; text-align: center; font-size: 12px;background-color: #337ab7;">
            <td style="width: 100%; color: #000000; padding-top: 5px;padding-bottom: 5px;" colspan="3">parsialhimatika.uinjkt@gmail.com &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+62896-1080-4184/+62838-9955-1720 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;himatika.fst.uinjkt.ac.id</td>
        </tr-->
    </table>
    <hr>
    <h2 style="margin-bottom: 0;">Data Peserta Try Out SBMPTN</h2>
    <h4 style="margin-bottom: 2px;">&nbsp;&nbsp;SAINTEK</h4>
    <table cellspacing="0" style="width: 100%;padding: 1px; font-size: 9pt; ">
        <tr style="background-color:#eeeeee; text-align: center">
            <th style="border: solid 1px #000000; padding: 4px;">No</th>
            <th style="border: solid 1px #000000; padding: 4px;">Nama Lengkap</th>
            <th style="border: solid 1px #000000; padding: 4px;">Tempat, Tanggal Lahir</th>
            <th style="border: solid 1px #000000; padding: 4px;">Alamat</th>
            <th style="border: solid 1px #000000; padding: 4px;">Sekolah</th>
            <th style="border: solid 1px #000000; padding: 4px;">Jurusan</th>
            <th style="border: solid 1px #000000; padding: 4px;">Pilihan</th>
            <th style="border: solid 1px #000000; padding: 4px;">Email</th>
            <th style="border: solid 1px #000000; padding: 4px;">No. WA</th>
            <th style="border: solid 1px #000000; padding: 4px;">Minat Jurusan & PTN</th>
        </tr>
<?php

    $sql_to    = $conn->query("SELECT * FROM konfirmasi_pembayaran WHERE nama_content='tryout_sbmptn' AND pilihan=1");

    if($sql_to->num_rows > 0){
        $no=1;
        while ($data_to = $sql_to->fetch_assoc()) {
            $email = $data_to['email'];
            $sql = $conn->query("SELECT * FROM tryout_sbmptn_parsial WHERE email='$email'");
            $data = $sql->fetch_assoc(); 
?>
        <tr style="text-align: center">
            <td style="width: 3%;border: solid 1px #000000; padding: 5px;"><?php echo $no;?></td>
            <td style="width: 12%;border: solid 1px #000000; padding: 5px 4px; text-align: left;"><?php echo $data['nama'];?></td>
            <td style="width: 12.5%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['tempat_lahir'].', '.$data['tgl_lahir'];?></td>
            <td style="width: 15.5%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['alamat'];?></td>
            <td style="width: 10%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['sekolah'];?></td>
            <td style="width: 5%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['jurusan'];?></td>
            <td style="width: 5.5%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['pilihan'];?></td>
            <td style="width: 15%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['email'];?></td>
            <td style="width: 9%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['no_hp'];?></td>
            <td style="width: 12.5%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['minat'];?></td>
        </tr>
<?php
        $no++;
        }
    }else{
        echo '<tr><td style="width: 100%;border: solid 1px #000000; padding: 5px;text-align: center" colspan=10>Tidak ada data</td></tr>
        ';
    }
?>
    </table>
    <h4 style="margin-bottom: 2px;">&nbsp;&nbsp;SOSHUM</h4>
    <table cellspacing="0" style="width: 100%;padding: 1px; font-size: 9pt; ">
        <tr style="background-color:#eeeeee; text-align: center">
            <th style="border: solid 1px #000000; padding: 4px;">No</th>
            <th style="border: solid 1px #000000; padding: 4px;">Nama Lengkap</th>
            <th style="border: solid 1px #000000; padding: 4px;">Tempat, Tanggal Lahir</th>
            <th style="border: solid 1px #000000; padding: 4px;">Alamat</th>
            <th style="border: solid 1px #000000; padding: 4px;">Sekolah</th>
            <th style="border: solid 1px #000000; padding: 4px;">Jurusan</th>
            <th style="border: solid 1px #000000; padding: 4px;">Pilihan</th>
            <th style="border: solid 1px #000000; padding: 4px;">Email</th>
            <th style="border: solid 1px #000000; padding: 4px;">No. WA</th>
            <th style="border: solid 1px #000000; padding: 4px;">Minat Jurusan & PTN</th>
        </tr>
<?php

    $sql_to    = $conn->query("SELECT * FROM konfirmasi_pembayaran WHERE nama_content='tryout_sbmptn' AND pilihan=2");

    if($sql_to->num_rows > 0){
        $no=1;
        while ($data_to = $sql_to->fetch_assoc()) {
            $email = $data_to['email'];
            $sql = $conn->query("SELECT * FROM tryout_sbmptn_parsial WHERE email='$email'");
            $data = $sql->fetch_assoc(); 
?>
        <tr style="text-align: center">
            <td style="width: 3%;border: solid 1px #000000; padding: 5px;"><?php echo $no;?></td>
            <td style="width: 12%;border: solid 1px #000000; padding: 5px 4px; text-align: left;"><?php echo $data['nama'];?></td>
            <td style="width: 12.5%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['tempat_lahir'].', '.$data['tgl_lahir'];?></td>
            <td style="width: 15.5%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['alamat'];?></td>
            <td style="width: 10%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['sekolah'];?></td>
            <td style="width: 5%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['jurusan'];?></td>
            <td style="width: 5.5%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['pilihan'];?></td>
            <td style="width: 15%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['email'];?></td>
            <td style="width: 9%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['no_hp'];?></td>
            <td style="width: 12.5%;border: solid 1px #000000; padding: 5px 2px;"><?php echo $data['minat'];?></td>
        </tr>
<?php
        $no++;
        }
    }else{
        echo '<tr><td style="width: 100%;border: solid 1px #000000; padding: 5px;text-align: center" colspan=10>Tidak ada data</td></tr>
        ';
    }
?>
    </table>
</page>