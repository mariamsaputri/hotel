<?php 
// berfungsi mengaktifkan session
session_start();
 
// berfungsi menghubungkan koneksi ke database
include 'lib/connect.php';
 
// berfungsi menangkap data yang dikirim
$username	= $_POST['nama'];
$password	= md5($_POST['password']);

// simpan akun ke tabel tamu
$connect->query("INSERT INTO users(username,password) VALUES ('$username','$password')");

echo '<script>alert("Anda telah daftar")</script>';
echo '<script>window.location="login.php"</script>';
?>
