<style type="text/css">
<!--
table { vertical-align: top; }
tr    { vertical-align: top; }
td    { vertical-align: top; }
}
-->
</style>
<page backcolor="#FEFEFE" style="font-size: 10pt" orientation="paysage" backtop="6mm" backbottom="6mm" backleft="8mm" backright="8mm">
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
    <br>
    <h2>Data Peserta Olimpiade Matematika</h2>
    <br>
    <table cellspacing="0" style="width: 100%;padding: 1px; font-size: 9pt; ">
        <tr>
            <th style="width: 2.5%;border: solid 1px #000000; padding: 2px; text-align: center">No</th>
            <th style="width: 12.5%;border: solid 1px #000000; padding: 2px; text-align: center">Nama Lengkap</th>
            <th style="width: 12.5%;border: solid 1px #000000; padding: 2px; text-align: center">Tempat, Tanggal Lahir</th>
            <th style="width: 15.5%;border: solid 1px #000000; padding: 2px; text-align: center">Alamat</th>
            <th style="width: 10%;border: solid 1px #000000; padding: 2px; text-align: center">Sekolah</th>
            <th style="width: 16%;border: solid 1px #000000; padding: 2px; text-align: center">Email</th>
            <th style="width: 10%;border: solid 1px #000000; padding: 2px; text-align: center">No. WA</th>
            <th style="width: 11.5%;border: solid 1px #000000; padding: 2px; text-align: center">Nama Pembimbing</th>
            <th style="width: 11.5%;border: solid 1px #000000; padding: 2px; text-align: center">No. Hp Pembimbing</th>
        </tr>
<?php

    $sql    = $conn->query("SELECT * FROM olimpiade_parsial ORDER BY id");
    if($sql->num_rows > 0){
        $no=1;
        while ($data = $sql->fetch_assoc()) {
?>
        <tr>
            <td style="width: 2.5%;border: solid 1px #000000; padding: 5px;text-align: center"><?php echo $no;?></td>
            <td style="width: 12.5%;border: solid 1px #000000; padding-top: 5px">&nbsp;&nbsp;<?php echo $data['nama'];?></td>
            <td style="width: 12.5%;border: solid 1px #000000; padding: 2px; text-align: center"><?php echo $data['tempat_lahir'].', '.$data['tgl_lahir'];?></td>
            <td style="width: 15.5%;border: solid 1px #000000; padding: 2px; text-align: center"><?php echo $data['alamat'];?></td>
            <td style="width: 10%;border: solid 1px #000000; padding: 2px; text-align: center"><?php echo $data['sekolah'];?></td>
            <td style="width: 16%;border: solid 1px #000000; padding: 2px; text-align: center"><?php echo $data['email'];?></td>
            <td style="width: 10%;border: solid 1px #000000; padding: 2px; text-align: center"><?php echo $data['no_hp'];?></td>
            <td style="width: 11.5%;border: solid 1px #000000; padding: 2px; text-align: center"><?php echo $data['nama_pemb'];?></td>
            <td style="width: 11.5%;border: solid 1px #000000; padding: 2px; text-align: center"><?php echo $data['no_hp_pemb'];?></td>
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