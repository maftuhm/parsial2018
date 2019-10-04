<?php 
require_once "../functions/config.php";
$title = 'Edit';
require_once "header.php";
?>
  <div class="container container-body">
    <h1>Edit Keterangan Formulir</h1>
    <hr>
    <div class="row">
      <div class="col-sm-12">

        <?php
            /*if($_POST['id']){
                $id= 
            }*/
            $id = (isset($_POST['id']) ? strtolower($_POST['id']) : NULL);
            if ($id) {
                $sql = $conn->query("SELECT * FROM keterangan WHERE id='$id'");
                $row =  $sql->fetch_assoc();
            }

            if($_POST['edit']){
                $id = $_POST['id'];
                $judul = $conn->real_escape_string($_POST['judul']);
                $ket   = $conn->real_escape_string($_POST['keterangan']);

                if(!empty(trim($id)) && !empty(trim($judul)) && !empty(trim($ket))){

                    $edit = $conn->query("UPDATE keterangan SET judul='$judul', list='$ket' WHERE id='$id'");
                    if($edit){
                        echo '<div class="alert alert-success">Edit keterangan berhasil.</div>';
                    }else{
                        echo '<div class="alert alert-danger">Gagal edit keterangan.</div>';

                    }
                }else{
                    echo '<div class="alert alert-danger">Tidak boleh kosong.</div>';

                }

            }
        ?>

        <form class="form-horizontal" method="POST">

          <div class="form-group">

            <label class="col-sm-offset-2 col-sm-1 control-label">Judul</label>
            <div class="col-sm-3">
              <input type="text" name="judul" value="<?php echo $row['judul'] ;?>" class="form-control">
            </div>
            <label class="control-label col-md-1">Content</label>
            <div class="col-md-2">
              <select name="id" class="form-control" onchange="form.submit()">
                <option value="0"> </option>
                <option value="1" <?php if($id == '1'){ echo 'selected'; } ?>>1. Futsal</option>
                <option value="2" <?php if($id == '2'){ echo 'selected'; } ?>>2. Tryout SBMPTN</option>
                <option value="3" <?php if($id == '3'){ echo 'selected'; } ?>>3. Olimpiade</option>
                <option value="4" <?php if($id == '4'){ echo 'selected'; } ?>>4. Singcomp</option>
              </select>
            </div>

          </div>

          <div class="form-group">
            <label class="col-sm-offset-2 col-sm-1 control-label">Keterangan</label>
            <div class="col-sm-6">
              <textarea name="keterangan" value="<?php echo $row['list'];?>" rows="15" class="form-control"></textarea>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-offset-2 col-sm-1 control-label">&nbsp;</label>
            <div class="col-sm-offset-3 col-md-1">
              <input type="submit" name="edit" value="Edit" class="btn btn-primary">
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-4 control-label">&nbsp;</label>
            <div class="col-md-8">
              Jika ada masalah hubungi <a href="register.php">Maftuh Mashuri.</a>
            </div>
          </div>
        </form>
      </div>
    </div>
<?php 
require_once "footer.php";
?>