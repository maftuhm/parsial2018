<!DOCTYPE html>

<html lang="en">

    <head>

        <?php echo $reload;?>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"> 
        <link rel="icon" type="image/png" href="../img/icon.png">
        <title><?php echo $title;?> - Panitia | Parsial 2018</title>

        <style type="text/css">
            body {
                padding-top: 70px;
                min-width: 768px;
                background: #eeeeee;
            }

            .container-body {
                background: #ffffff;
                box-shadow: 1px 1px 1px #999;
                padding: 20px;
            }
            .container-body .table-scroll{
                overflow-x: scroll;
            }
            .container-body .select{
                max-width: 212px;
            }
            .index {
                background: #ffffff;
                box-shadow: 1px 1px 1px #999;
                padding: 20px;
            }
            .lunas{
                background-color:#dff0d8;
                color : #3c763d;
            }
            .foto{
                height: 300px;
            }
            .foto-peserta{
                height: 150px;
                width: auto;
            }
            .pembayaran{
                height: 100px;
                width: auto;
            }
            h1 a, h2 a, h3 a{
                text-decoration: none;
                color: #000000;
            }
            h1 a:hover, h2 a:hover, h3 a:hover{
                text-decoration: none;
                color: #9d9d9d;
            }
            .margin{
                margin-top: 10px;
                margin-bottom: 5px;
                list-style: none;
                margin-left: -15px;
                font-weight: 700;
                font-size: 16px;
            }
            .btn-edit{
                display: inline-block;
                margin-top: 2px;
            }
            .btn-edit{
                min-width: 90px;
            }
            .nilai{
                max-width: 50px;
                margin: 0;
            }
            body > div:last-child > a > img{
                display:none;
            }
        </style>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/bootstrap-filestyle.min.js"></script>
        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-111414982-1"></script>
        <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());
        
          gtag('config', 'UA-111414982-1');
        </script>

        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    
    <body>

        <nav class="navbar navbar-inverse navbar-fixed-top">

            <div class="container">
                
                <div class="navbar-header">
                
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                
                    <a class="navbar-brand" href="index.php">PARSIAL 2018</a>
                
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                
                    <ul class="nav navbar-nav">

                        <li <?php echo $index_active;?>><a href="index.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>

                        <li <?php echo $futsal_active;?>><a href="futsal.php"><span class="glyphicon glyphicon-globe" aria-hidden="true"></span> Futsal</a></li>

                        <li <?php echo $math_active;?>><a href="tryout-sbmptn.php"><span class="glyphicon glyphicon-education" aria-hidden="true"></span> Math Competition</a></li>

                        <li <?php echo $sing_active;?>><a href="singcomp.php"><span class="glyphicon glyphicon-music" aria-hidden="true"></span> Sing Competition</a></li>

                        <li <?php echo $workshop_active;?>><a href="workshop.php"><span class="glyphicon glyphicon-education" aria-hidden="true"></span> Workshop</a></li>

                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                    <?php

                        $sql_admin = $conn->query("SELECT * FROM admin WHERE email='{$_SESSION['admin']}'");
                        $data_admin = $sql_admin->fetch_assoc();

                        switch ($_SESSION['admin']) {
                            case $data_admin['pj_content']==1.1 OR $data_admin['pj_content']==1.2 OR $data_admin['status']==3:
                                $id_content = 1;
                                break;
                            case $data_admin['pj_content']==2 OR $data_admin['status']==4:
                                $id_content = 2;
                                break;
                            case $data_admin['pj_content']==3 OR $data_admin['status']==4:
                                $id_content = 3;
                                break;
                            case $data_admin['pj_content']==4 OR $data_admin['status']==5:
                                $id_content = 4;
                                break;
                            case $data_admin['pj_content']==5 OR $data_admin['status']==6:
                                $id_content = 5;
                                break;
                            default :
                                $id_content = 1;
                                break;
                        }
                    
                        if($_SESSION['admin']){

                            if($data_admin['status'] == 1){

                    ?>
                        
                        <li class="dropdown">
                        
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                <span class="glyphicon glyphicon-tasks" aria-hidden="true"></span>  Formulir 
                            </a>
                        
                            <ul class="dropdown-menu">
                                
                                <li><a href="../pendaftaran-futsal.php" target="_blank">Futsal</a></li>
                                <li role="separator" class="divider"></li>
                                
                                <li><a href="../pendaftaran-try-out-sbmptn.php" target="_blank">Try Out SBMPTN</a></li>
                                <li role="separator" class="divider"></li>
                                
                                <li><a href="../pendaftaran-olimpiade.php" target="_blank">Olimpiade</a></li>
                                <li role="separator" class="divider"></li>
                                
                                <li><a href="../pendaftaran-singcomp.php" target="_blank">Singcomp</a></li>
                                <li role="separator" class="divider"></li>
                                
                                <li><a href="../konfirmasi-pembayaran.php" target="_blank">Konfirmasi Pembayaran</a></li>
                                <li role="separator" class="divider"></li>
                                
                                <li><a href="../konfirmasi-pembayaran-olim.php" target="_blank">Konfirmasi Pembayaran Olim</a></li>
                                <li role="separator" class="divider"></li>
                                
                                <li><a href="../data-pemain1.php" target="_blank">Data Pemain1</a></li>
                                <li role="separator" class="divider"></li>
                                
                                <li><a href="../data-pemain2.php" target="_blank">Data Pemain2</a></li>
                                <li role="separator" class="divider"></li>
                                
                                <li><a href="../data-peserta-group.php" target="_blank">Data Peserta Group</a></li>
                                <li role="separator" class="divider"></li>
                                
                                <li><a href="../data-peserta-solo.php" target="_blank">Data Peserta Solo</a></li>
                            </ul>

                        </li>
                        
                        <li <?php echo $reg_active;?>><a href="register.php"><span class="glyphicon glyphicon-list" aria-hidden="true"></span> Daftar Admin</a></li>
                        
                        <li <?php echo $mess_active;?>>
                        
                            <a href="pesan.php"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Pesan</a>
                        
                        </li>
                        
                    <?php
                        }
                    ?>

                        <li class="dropdown">
                        
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>  Setting
                            </a>
                            
                            <ul class="dropdown-menu">
                            
                                <li><a href="profile.php"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Profile</a></li>
                                <li role="separator" class="divider"></li>
                                
                                <li><a href="upload-sk.php"><span class="glyphicon glyphicon-file" aria-hidden="true"></span> SK</a></li>
                                <li role="separator" class="divider"></li>
                                
                                <li><a href="data-pembayaran.php?id_content=<?php echo $id_content; ?>"><span class="glyphicon glyphicon-usd" aria-hidden="true"></span> Pembayaran</a></li>

                                <li role="separator" class="divider"></li>
                                <li><a href="send-mail.php" target="_blank"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Kirim Email</a></li>

                                <li role="separator" class="divider"></li>
                                <li><a href="../contact-us.php"><span class="glyphicon glyphicon-send" aria-hidden="true"></span> Contact Us</a></li>
                                
                                <li role="separator" class="divider"></li>
                                <li><a href="logout.php" <?php echo 'onclick="return confirm(\'Yakin bro?\')"'; ?>><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> Logout</a>
                                </li>
                            
                            </ul>
                        
                        </li>
                        
                <?php
                }else{
                        echo 
                        '<li><a href="login.php"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> Login</a></li>';
                }
                ?>

                    </ul>
                
                </div>
            
            </div>
        
        </nav>
        
        <div hidden>
            <iframe data-aa='814592' src='//ad.a-ads.com/814592?size=320x50' scrolling='no' style='width:320px; height:50px; border:0px; padding:0;overflow:hidden' allowtransparency='true'></iframe>
        </div>  