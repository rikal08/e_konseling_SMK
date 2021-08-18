<?php 
session_start();

include "../koneksi.php";
$id= $_SESSION['id'];
$sql = mysqli_query($koneksi, "SELECT * FROM tb_user where id='$id'");
while ($tampil=mysqli_fetch_array($sql)) {
  $level=$tampil['lv'];
  $nis=$tampil['id_user'];
  
}
if (empty($nis)) {
  header("location:login/");
}

 ?>
<h1><a href="login">Login</a></h1>