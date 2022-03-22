<?php
  $bayar = mysqli_query($connect, "SELECT * FROM `lihat_bayar`");
  while ($res = mysqli_fetch_assoc($bayar)) {
    $pemesanan[] = $res;
  }
?>

  <div class="col-md-12">
  <div class="card">
    <div class="content">
      <div class="content table-responsive table-full-width">
        <h2>Cara bayar :</h2>
        <h5>Silahkan transfer ke rekening bca : 012345678910</h5>
        <h5>Jika sudah bayar silahkan hubungi nomor admin di sini untuk mengirimkan bukti transfer <a href="https://api.whatsapp.com/send?phone=6288229021002&text=Saya%20ingin%20mengirimkan%20bukti%20transfer%20saya.">Klik disini</a></h5>
         </div>
           </div>
             </div>
               </div>
