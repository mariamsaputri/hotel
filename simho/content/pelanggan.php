<?php
  $pelanggan = mysqli_query($connect, "SELECT * FROM pelanggan ORDER BY idpelanggan DESC");
?>
<?php
  if(isset($_POST['submit'])) {	
    $nama = $_POST['nama'];
    $no_ktp = $_POST['no_ktp'];
    $alamat = $_POST['alamat'];
    $telepon = $_POST['telepon'];

    $result = mysqli_query($connect, "INSERT INTO pelanggan (nama, alamat, no_ktp, telepon) VALUES ('$nama', '$alamat', '$no_ktp', '$telepon')");
    header("location: pemesanan.php");
  }
?>
  <div class="col-md-6 col-md-offset-3">
    <div class="card">
      <div class="header">
        <h4 class="title">Pelanggan</h4>
      </div>
      <div class="content">
        <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label>Nama</label>
                <input type="text" name="nama" class="form-control border-input" placeholder="Nama" value="">
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label>No KTP</label>
                <input type="text" name="no_ktp" class="form-control border-input" placeholder="No KTP" value="">
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label>Alamat</label>
                <input type="text" name="alamat" class="form-control border-input" placeholder="Alamat" value="">
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label>No Telp</label>
                <input type="text" name="telepon" class="form-control border-input" placeholder="No Telp" value="">
              </div>
            </div>
          </div>
          <div class="text-center">
            <button type="submit" class="btn btn-info btn-fill btn-wd" name="submit">Tambah Pelanggan</button>
          </div>
          <div class="clearfix"></div>
      </div>
    </div>
    </form>
  </div>
  </div>
  </div>
  </div>