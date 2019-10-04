<?php 
require_once "../functions/config.php";
$title = 'Ubah Data Peserta Try Out SBMPTN';
require_once "header.php";
?>

		<div class="section">
        
        	<div class="container container-body" >

				<form class="form-horizontal" id="submit_form" method="POST" enctype="multipart/form-data">
	
					<div class="row">

						<div class="col-sm-12">
	
							<h2><a href="tryout-sbmptn.php">Futsal</a> <span class="glyphicon glyphicon-chevron-right"></span><span class="glyphicon glyphicon-chevron-right"></span> <a href="">Ubah Data Peserta</a></h2>
			        		<hr>	
						</div>
	
					</div>
<?php
    if(!$_SESSION['admin']){

        echo '<div class="alert alert-danger">Anda harus login untuk membuka halaman ini.</div>';

    }else{

        if($data_admin['status'] != 1 && $data_admin['pj_content'] !=1.1 && $data_admin['pj_content'] !=1.2){
            
            echo '<div class="alert alert-danger">Anda tidak memiliki akses untuk membuka halaman ini.</div>';
        
        }else{
		    
		    if (isset($_GET['id'])) {
		    	
		    	$id = $_GET['id'];
			    $sql = $conn->query("SELECT * FROM data_pemain_futsal WHERE id='$id'");
			    $data = $sql->fetch_assoc();

				define("UPLOAD_DIR", "foto_peserta/futsal/");

				if (!empty($_FILES["myFile"]) && !empty($_FILES["myFile1"])) {
				        
				    $myFile = $_FILES["myFile"];
				    $myFile1 = $_FILES["myFile1"];
				    $ext    = pathinfo($_FILES["myFile"]["name"], PATHINFO_EXTENSION);
				    $ext1    = pathinfo($_FILES["myFile1"]["name"], PATHINFO_EXTENSION);
				    $size   = $_FILES["myFile"]["size"];
				    $size1   = $_FILES["myFile1"]["size"];
				      
				    if ($myFile["error"] !== UPLOAD_ERR_OK && $myFile1["error"] !== UPLOAD_ERR_OK) {
				    
				        echo '
						<div class="alert alert-warning">
							<center>
								File kosong atau terdapat kesalahan pada file atau ukuran file terlalu besar. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia
							</center>
						</div>';
				    }

				    // filename yang aman
				    $name = preg_replace("/[^A-Z0-9._-]/i", "_", $myFile["name"]);
				    $name1 = preg_replace("/[^A-Z0-9._-]/i", "_", $myFile1["name"]);

				    // mencegah overwrite filename
				    $i = 0; $j=0;
				    $parts = pathinfo($name);
				    $parts1 = pathinfo($name1);

				    while (file_exists(UPLOAD_DIR . $name)) {$i++; $name = $parts["filename"] . "-" . $i . "." . $parts["extension"];}
				    while (file_exists(UPLOAD_DIR . $name1)) {$j++; $name1 = $parts1["filename"] . "-" . $j . "." . $parts1["extension"];}

				    if($_POST['save']){

				        $nama      = $conn->real_escape_string($_POST['nama']);
				        $success = move_uploaded_file($myFile["tmp_name"], UPLOAD_DIR . $name);
				        $success1 =  move_uploaded_file($myFile1["tmp_name"], UPLOAD_DIR . $name1);

				        if(empty(trim($nama))){

				            echo '
				            <div class="alert alert-danger">
								<center>
									Formulir wajib diisi.
								</center>
							</div>';

				        }else{

				            if (!$success && !$success1) { 

				                echo '
					                <div class="alert alert-warning">
										<center>
											Mohon maaf atas ketidaknyamanan anda, <b>Unggah foto dan kartu identitas gagal</b>. Harap klik <a href="contact-us.php">disini</a> untuk menghubungi panitia.
										</center>
									</div>';
				                exit;
				            }else{

				                $update = $conn->query("UPDATE data_pemain_futsal SET nama_pemain='$nama', nama_foto='$name', size_foto='$size', type_foto='$ext', nama_ktm='$name1', size_ktm='$size1', type_ktm='$ext1' WHERE id='$id'");
				    
				                if($update){
				    
				                    echo 
				                        '<div class="alert alert-success">
				                            Edit data pemain berhasil.
				                        </div>';
				                        
				                }else{
				        
				                    echo '
					                <div class="alert alert-warning">
										Edit data pemain gagal.
									</div>';
				                    exit;
				    
				                }
				            }
				        }

				            // set permisi file
				        chmod(UPLOAD_DIR . $name, 0644);
				        chmod(UPLOAD_DIR . $name1, 0644);
				    }   
				}
			}
?>	
	
					<div class="row">

						<div class="form-group">

							<label class="control-label col-sm-offset-1 col-sm-2">Nama </label>
							<div class="col-sm-6">
								<input type="text" class="form-control" name="nama" value="<?= $data['nama_pemain'];?>" required placeholder="Nama Lengkap" />
							</div>
						
                        </div>
                        
                        <div class="form-group">

                            <label class="control-label col-sm-offset-1 col-sm-2">Foto </label>

                            <div class="col-sm-4">

                                <input type="file" name="myFile" class="filestyle" data-icon="true">
                            </div>

                        </div>

                        <div class="form-group">

                            <label class="control-label col-sm-offset-1 col-sm-2">Kartu Identitas </label>

                            <div class="col-sm-4">

                                <input type="file" name="myFile1" class="filestyle" data-icon="true">

                            </div>

                        </div>

                        <div class="form-actions">

                            <div class="row">

                                <div class="col-sm-offset-3 col-sm-3">

									<input class="btn btn-primary" type="submit" name="save" value="Simpan" onclick="return confirm(\'Apakah data anda sudah benar?\')" />

                                    <br>

                                </div>

                            </div>
                              
                        </div>

    				</div>

				</form>


<?php
		}
	}
?>
<?php require_once "footer.php";?>