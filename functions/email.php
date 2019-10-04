<?php 
    $subject = 'Pendaftaran Berhasil';

    $select_data = $conn->query("SELECT * FROM admin WHERE status=1");
    $data_   = $select_data->fetch_assoc();
    $email_a = $data_['email'];
    $nama_a  = $data_['nama'];

    $message_1 = '
        <!doctype html>

        <html>

            <head>
                
                <meta name="viewport" content="width=device-width">
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="icon" type="image/png" href="https://parsial2018.000webhostapp.com/img/icon.png">
                <title>Pendaftaran Berhasil</title>

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
                        
                        <td class="container" style="font-family: sans-serif; font-size: 14px; vertical-align: top; display: block; margin: 0 auto; max-width: 580px; padding: 10px; width: 580px;">
                        
                            <div class="content" style="box-sizing: border-box; display: block; margin: 0 auto; max-width: 580px; padding: 10px;">

                                <table class="main" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%; background: #ffffff; border-radius: 3px;">

                                <!-- START MAIN CONTENT AREA -->
                                    <tr>

                                        <td class="wrapper" style="font-family: sans-serif; font-size: 14px; vertical-align: top; box-sizing: border-box;">
                                        
                                            <img style="max-width: 100%; margin: 0 auto; display: block;" src="https://parsial2018.000webhostapp.com/img/header-email.jpg" >
                                        
                                        </td>
                                    
                                    </tr>
                    
                                    <tr>
                    
                                        <td class="wrapper" style="font-family: sans-serif; font-size: 14px; vertical-align: top; box-sizing: border-box; padding: 20px;">
                                            
                                            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;">
                                            
                                                <tr>
                                                    
                                                    <td style="font-family: sans-serif; font-size: 14px; vertical-align: top;">
                                                        <hr>';
    
    $message_p1 = '                                                
                                                        <p style="font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 15px 0;">Hai '.$nama.',</p>
                                                        <p style="font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 15px 0;">'.$text.'</p>';
    $message_a1 = '
                                                        <p style="font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 15px 0;">Hai '.$nama_a.',</p>
                                                        <p style="font-family: sans-serif; font-size: 14px; font-weight: normal; margin: 15px 0;">'.$text_a.'</p>';
    $message_2 = '
                                                    
                                                        <table border="0" cellpadding="0" cellspacing="0" class="btn btn-primary" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%; box-sizing: border-box;">
                                                    
                                                            <tbody>
                                                    
                                                                <tr>
                                                    
                                                                    <td align="left" style="font-family: sans-serif; font-size: 14px; vertical-align: top; padding: 25px 35px;">
                                                    
                                                                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: auto;">
                                                    
                                                                            <tbody>
                                                    
                                                                                <tr>';
        $message_p2 = '                                            
                                                                                    <td style="font-family: sans-serif; font-size: 14px; vertical-align: top; background-color: #222; border-radius: 5px; text-align: center;"> <a href="http://www.parsial.cf/'.$url_tombol.'" target="_blank" style="display: inline-block; color: #ffffff; background-color: #222; border: solid 1px #222; border-radius: 5px; box-sizing: border-box; cursor: pointer; text-decoration: none; font-size: 14px; font-weight: bold; margin: 0; padding: 12px 25px; text-transform: capitalize; border-color: #222;">Konfirmasi</a> 
                                                                                    </td>';
        $message_a2 = '                                            
                                                                                    <td style="font-family: sans-serif; font-size: 14px; vertical-align: top; background-color: #222; border-radius: 5px; text-align: center;"> <a href="http://www.parsial.cf/panitia/login.php" target="_blank" style="display: inline-block; color: #ffffff; background-color: #222; border: solid 1px #222; border-radius: 5px; box-sizing: border-box; cursor: pointer; text-decoration: none; font-size: 14px; font-weight: bold; margin: 0; padding: 12px 25px; text-transform: capitalize; border-color: #222;">Halaman Admin</a> 
                                                                                    </td>';

        $message_3 = '

                                                                                </tr>
                                                    
                                                                            </tbody>
                                                    
                                                                        </table>
                                                    
                                                                    </td>
                                                    
                                                                </tr>
                                                    
                                                            </tbody>
                                                    
                                                        </table>
                                                    
                                                        <p style="font-family: sans-serif; font-size: 14px; font-weight: normal; margin:15px 0;">Untuk informasi lebih lanjut tentang pengisian formullir dapat melalui halaman <a href="http://parsial.cf/contact-us.php" style="text-decoration: none;color: #999999">Contact Us</a> yang sudah kami sediakan.</p>
                                                    
                                                        <br>
                                                    
                                                        <p style="font-family: sans-serif; font-size: 14px; text-align:right; font-weight: normal; margin-bottom: 15px;"><em> – <a href="http://parsial.cf/contact-us.php" style="text-decoration: none;color: #999999">Web Developer</a></em></p>
                                                        <hr>

                                                        <tr>
                                                            <td class="wrapper" style="vertical-align: top; box-sizing: border-box; padding: 10px; text-align: right;">
                                                                <img style="max-width: 7%;display: inline;" src="https://parsial2018.000webhostapp.com/img/line-icon.png" >
                                                                <img style="max-width: 8%;display: inline;" src="https://parsial2018.000webhostapp.com/img/logo-wa.png" >
                                                                <img style="max-width: 7%;display: inline;" src="https://parsial2018.000webhostapp.com/img/instagram-icon.png" >
                                                                <img style="max-width: 8%;display: inline;" src="https://parsial2018.000webhostapp.com/img/logo-youtube.png" >
                                                            </td>

                                                        </tr>
                                                    
                                                    </td>

                                                </tr>

                                            </table>

                                        </td>

                                    </tr>
                                    <!-- END MAIN CONTENT AREA -->

                                </table>

                                <!-- START FOOTER -->
                                <div class="footer" style="clear: both; margin-top: 10px; text-align: center; width: 100%;">

                                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;">

                                        <tr>

                                            <td class="content-block" style="font-family: sans-serif; vertical-align: top; padding-bottom: 10px; padding-top: 10px; font-size: 12px; color: #999999; text-align: center;">
                                                <span class="apple-link" style="color: #999999; font-size: 12px; text-align: center;">Jalan Ir. Juanda Nomor 95, Ciputat, Tangerang Selatan, Banten, 15412.</span>
            
                                                <br>
            
                                            </td>
                
                                        </tr>
                
                                        <tr>
                
                                            <td class="content-block powered-by" style="font-family: sans-serif; vertical-align: top; padding-bottom: 10px; padding-top: 10px; font-size: 12px; color: #999999; text-align: center;">
                                            &copy; Copyright <a href="http://www.parsial.cf" style="color: #999999; font-size: 12px; text-align: center; text-decoration: none;">Parsial 2018 <br> HIMATIKA UIN Syarif Hidayatullah Jakarta</a>.
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
    $message = $message_1.$message_p1.$message_2.$message_p2.$message_3;

    $headers[] = 'MIME-Version: 1.0';
    $headers[] = 'Content-type: text/html; charset=iso-8859-1';

    // Additional headers

    $headers[] = "To: '$nama' <$email>";
    $headers[] = "From: Parsial HIMATIKA <parsialhimatika.uinjkt@gmail.com>";

    // Mail it
    if(mail($email, $subject, $message, implode("\r\n", $headers))){

        $subject_a = 'Pendaftaran Peserta Baru';
        $message_admin = $message_1.$message_a1.$message_2.$message_a2.$message_3;

        $headers_a[] = 'MIME-Version: 1.0';
        $headers_a[] = 'Content-type: text/html; charset=iso-8859-1';

        // Additional headers

        $headers_a[] = "To: '$nama_a' <$email_a>";
        $headers_a[] = "From: Parsial HIMATIKA <parsialhimatika.uinjkt@gmail.com>";


        mail($email_a, $subject_a, $message_admin, implode("\r\n", $headers_a));
    }

?>