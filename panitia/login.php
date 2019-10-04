<?php 
require_once "../functions/config.php";
$title = 'Log In';

    if($_POST['login']){
    
        $email   = $conn->real_escape_string($_POST['email']);
        $pass   = md5($conn->real_escape_string($_POST['password']));

        $sql = $conn->query("SELECT * FROM admin WHERE email='$email' AND password='$pass'");
        
        if($sql->num_rows > 0){
        
            $_SESSION['admin'] = $email;
            header("Location: index.php");
        
        }else{
        
            $alert = '<div class="alert alert-danger">Email atau password salah.</div>';
        }
    }

require_once "header.php";
?>
  
        <div class="container container-body">
            
            <h1>Login</h1>
            
            <hr>
            
            <div class="row">
      
                <div class="col-md-4 col-md-offset-4">

                    <?= $alert;?>
                    <form class="form-horizontal" action="" method="post">
                        
                        <div class="form-group">
                        
                            <label class="col-md-4 control-label">Email</label>
                        
                            <div class="col-md-8">
                                
                                <input type="email" name="email" class="form-control" placeholder="email">
                            
                            </div>
                      
                        </div>
                      
                        <div class="form-group">
                            
                            <label class="col-md-4 control-label">Password</label>
                            
                            <div class="col-md-8">
                                
                                <input type="password" name="password" class="form-control" placeholder="password">
                            
                            </div>
                      
                        </div>
                      
                        <div class="form-group">
                            
                            <label class="col-md-4 control-label">&nbsp;</label>
                        
                            <div class="col-md-8">
                                
                                <input type="submit" name="login" class="btn btn-primary" value="Login">
                        
                            </div>
                        
                        </div>
                      
                        <div class="form-group">
                            
                            <label class="col-md-4 control-label">&nbsp;</label>
                        
                            <div class="col-md-8">

                                Jika ada masalah hubungi <a href="../contact-us.php">Maftuh Mashuri.</a>

                            </div>
                        
                        </div>
                    
                    </form>
                
                </div>

            </div>

<?php 
require_once "footer.php";
?>