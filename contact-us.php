<?php 
require_once "functions/config.php";
$title = 'Contact Us';
require_once "views/header.php";
require_once "views/variabel.php";
?>

            <div class="section">

        

            <div class="container" >



<?php

    if($_POST['register']){

        $email_admin = 'maftuhsafii@gmail.com'; //ganti email dg email admin (email penerima pesan)
        
    $email = $conn->real_escape_string($_POST['email']);
    $subject = $conn->real_escape_string($_POST['subject']);
    $nama = $conn->real_escape_string($_POST['nama']);
    $pesan = $conn->real_escape_string($_POST['pesan']);

    $message = '
            <!doctype html>
            
            <html>

                <head>
                    <meta name="viewport" content="width=device-width">
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <link rel="icon" type="image/png" href="http://parsial.cf/img/icon.png">
                    <title>Pendaftaran Berhasil!</title>
                    
                    <style>
                    
                        /* -------------------------------------
                            RESPONSIVE AND MOBILE FRIENDLY STYLES
                        ------------------------------------- */
                        @media only screen and (max-width: 620px) {
                        
                        table[class=body] h1 {
                            font-size: 28px !important;
                            margin-bottom: 10px !important;
                        }
                        
                        table[class=body] p,
                        table[class=body] ul,
                        table[class=body] ol,
                        table[class=body] td,
                        table[class=body] span,
                        table[class=body] a {
                            font-size: 16px !important;
                        }
                          table[class=body] .wrapper,
                                table[class=body] .article {
                            padding: 10px !important;
                          }
                          table[class=body] .content {
                            padding: 0 !important;
                          }
                          table[class=body] .container {
                            padding: 0 !important;
                            width: 100% !important;
                          }
                          table[class=body] .main {
                            border-left-width: 0 !important;
                            border-radius: 0 !important;
                            border-right-width: 0 !important;
                          }
                          table[class=body] .btn table {
                            width: 100% !important;
                          }
                          table[class=body] .btn a {
                            width: 100% !important;
                          }
                          table[class=body] .img-responsive {
                            height: auto !important;
                            max-width: 100% !important;
                            width: auto !important;
                          }
                        }
                        /* -------------------------------------
                            PRESERVE THESE STYLES IN THE HEAD
                        ------------------------------------- */
                        @media all {
                          .ExternalClass {
                            width: 100%;
                          }
                          .ExternalClass,
                                .ExternalClass p,
                                .ExternalClass span,
                                .ExternalClass font,
                                .ExternalClass td,
                                .ExternalClass div {
                            line-height: 100%;
                          }
                          .apple-link a {
                            color: inherit !important;
                            font-family: inherit !important;
                            font-size: inherit !important;
                            font-weight: inherit !important;
                            line-height: inherit !important;
                            text-decoration: none !important;
                          }
                          .btn-primary table td:hover {
                            background-color: #34495e !important;
                          }
                          .btn-primary a:hover {
                            background-color: #34495e !important;
                            border-color: #34495e !important;
                          }
                        }
                    </style>

                  </head>

                  <body class="" style="background-color: #f6f6f6; font-family: sans-serif; -webkit-font-smoothing: antialiased; font-size: 14px; line-height: 1.4; margin: 0; padding: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;">
                    <table border="0" cellpadding="0" cellspacing="0" class="body" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%; background-color: #f6f6f6;">
                      <tr>
                        <td style="font-family: sans-serif; font-size: 14px; vertical-align: top;">&nbsp;</td>
                        <td class="container" style="font-family: sans-serif; font-size: 14px; vertical-align: top; display: block; Margin: 0 auto; max-width: 580px; padding: 10px; width: 580px;">
                          <div class="content" style="box-sizing: border-box; display: block; Margin: 0 auto; max-width: 580px; padding: 10px;">

                            <table class="main" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%; background: #ffffff; border-radius: 3px;">

                              <!-- START MAIN CONTENT AREA -->
                              <tr>
                                <td class="wrapper" style="font-family: sans-serif; font-size: 14px; vertical-align: top; box-sizing: border-box; padding: 20px;">
                                  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;">
                                    <tr>
                                      <td style="font-family: sans-serif; font-size: 14px; vertical-align: top;">
                                        <p style="font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; Margin-bottom: 15px;">Hai Maftuh,</p>
                                        <p style="font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; Margin-bottom: 15px;">'.$pesan.'</p>
                                        <table border="0" cellpadding="0" cellspacing="0" class="btn btn-primary" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%; box-sizing: border-box;">
                                          <tbody>
                                            <tr>
                                              <td align="left" style="font-family: sans-serif; font-size: 14px; vertical-align: top; padding-bottom: 15px;">
                                                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: auto;">
                                                  <tbody>
                                                    <tr>
                                                      <td style="font-family: sans-serif; font-size: 14px; vertical-align: top; background-color: #3498db; border-radius: 5px; text-align: center;"> <a href="http://www.parsial.cf/konfirmasi-pembayaran.php?nama_content=0" target="_blank" style="display: inline-block; color: #ffffff; background-color: #3498db; border: solid 1px #3498db; border-radius: 5px; box-sizing: border-box; cursor: pointer; text-decoration: none; font-size: 14px; font-weight: bold; margin: 0; padding: 12px 25px; text-transform: capitalize; border-color: #3498db;">Pembayaran</a> </td>
                                                    </tr>
                                                  </tbody>
                                                </table>
                                              </td>
                                            </tr>
                                          </tbody>
                                        </table>
                                        <p style="font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 0; Margin-bottom: 15px;">Semoga sukses!</p>
                                      </td>
                                    </tr>
                                  </table>
                                </td>
                              </tr>

                            <!-- END MAIN CONTENT AREA -->
                            </table>

                            <!-- START FOOTER -->
                            <div class="footer" style="clear: both; Margin-top: 10px; text-align: center; width: 100%;">
                              <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;">
                                <tr>
                                  <td class="content-block" style="font-family: sans-serif; vertical-align: top; padding-bottom: 10px; padding-top: 10px; font-size: 12px; color: #999999; text-align: center;">
                                    <span class="apple-link" style="color: #999999; font-size: 12px; text-align: center;">Jalan Ir. Juanda Nomor 95, Ciputat, Tangerang Selatan, Banten, 15412.</span>
                                    <br>
                                  </td>
                                </tr>
                                <tr>
                                  <td class="content-block powered-by" style="font-family: sans-serif; vertical-align: top; padding-bottom: 10px; padding-top: 10px; font-size: 12px; color: #999999; text-align: center;">
                                    &copy; Copyright <a href="parsial.cf" style="color: #999999; font-size: 12px; text-align: center; text-decoration: none;">Parsial 2018 <br> HIMATIKA UIN Syarif Hidayatullah Jakarta</a>.
                                  </td>
                                </tr>
                              </table>
                            </div>
                            <!-- END FOOTER -->

                          <!-- END CENTERED WHITE CONTAINER -->
                          </div>
                        </td>
                        <td style="font-family: sans-serif; font-size: 14px; vertical-align: top;">&nbsp;</td>
                      </tr>
                    </table>
                  </body>
                </html>';

    // To send HTML mail, the Content-type header must be set

    $headers[] = 'MIME-Version: 1.0';
    $headers[] = 'Content-type: text/html; charset=iso-8859-1';

    // Additional headers

    $headers[] = "To: Maftuh Mashuri <$email_admin>";
    $headers[] = "From: Parsial HIMATIKA <parsialhimatika.uinjkt@gmail.com>";

        if(!empty(trim($nama)) && !empty(trim($email)) && !empty(trim($subject)) && !empty(trim($pesan))){



            if(mail($email_admin, $subject, $message, implode("\r\n", $headers))){



                $insert = $conn->query("INSERT INTO contact_us (nama, email, subject, pesan) VALUES('$nama', '$email','$subject', '$pesan')");

                if($insert){

                        

                    echo '<div class="alert alert-success"><center>SUCCESS : Pesan anda berhasil dikirim.</center></div>';

                }else{

                        

                    echo '<div class="alert alert-danger"><center>ERROR : Ada kesalahan pada syntax.</center></div>';

                }



            }else{

                echo '<div class="alert alert-danger"><center>ERROR : Pesan anda gagal dikirim silahkan coba lagi.</center></div>';

            }



        }else{

        

            echo '<div class="alert alert-danger"><center>ERROR : Harus diisi.</center></div>';



        }

    }

?>

                <form class="form-horizontal" id="submit_form" method="POST">



                    <div class="row">

                        <div class="col-sm-12">

                            <h2>Contact Us</h2>

                        </div>

                    </div>

                    <div class="row">

                        <div class="form-group">

                            <label class="control-label col-sm-offset-1 col-sm-2">Nama <span class="required">* </span></label>

                            <div class="col-sm-6">

                                <input type="text" class="form-control" name="nama" required placeholder="Nama Lengkap" />

                            </div>

                        </div>



                        <div class="form-group">

                            <label class="control-label col-sm-offset-1 col-sm-2">Email <span class="required">* </span></label>

                            <div class="col-sm-6">

                                <input type="email" class="form-control" name="email" required placeholder="Alamat Email" />

                            </div>

                        </div>

                        

                        <div class="form-group">

                            <label class="control-label col-sm-offset-1 col-sm-2">Subject <span class="required">* </span></label>

                            <div class="col-sm-6">

                                <input type="text" class="form-control" name="subject" required placeholder="Subject" />

                            </div>

                        </div>



                        <div class="form-group">

                            <label class="control-label col-sm-offset-1 col-sm-2">Pesan <span class="required">* </span></label>

                            <div class="col-sm-6">

                                <textarea type="text" rows="10" class="form-control" name="pesan" required placeholder="">Keluhan anda...</textarea>

                            </div>

                        </div>

                        <div class="form-actions">



                            <div class="row">



                                <div class="col-sm-offset-1 col-sm-3">



                                    <input class="btn btn-submit" type="submit" name="register" />



                                    <br>



                                </div>



                            </div>

                        

                        </div>

                

                    </div>



                </form>



            </div>



        </div>



        <div class="section">

            <div class="container">

                <div id="rules">

                    <h4>Contact Us</h4>

                    <ol>

                        <li>Harap gunakan bahasa yang santun.</li>

                        <li>Pergunakan halaman contact us sebaik mungkin.</li>

                        <li>Email akan dibalas 1x24 jam.</li>

                        <li>Jika anda ingin mengubungi panitia lewat personal chat, dapat menghubungi nomor-nomor yang tertera pada <i>Syarat dan Ketentuan</i> atau pada halaman formulir.</li>

                        <li><?php echo $url_futsal;?></li>

                        <li><?php echo $url_to;?></li>

                        <li><?php echo $url_olim;?></li>

                        <li><?php echo $url_singcomp;?></li>

                        <li>Penanggung Jawab Formulir <?php echo $admin;?>.</li>

                    </ol>

                </div>

            </div>

        </div>
        
        <!--div hidden>
            <iframe scrolling="no" frameborder="0" src="https://coinpot.co/mine/bitcoincore/?ref=BE209166CB9B&mode=widget" style="overflow:hidden;width:324px;height:470px;"></iframe>
        </div-->


<?php require_once "views/footer.php";?>