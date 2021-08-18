<?php 	
// mengaktifkan session pada php
session_start();
 
// menghubungkan php dengan koneksi database
include 'koneksi.php';
 
// menangkap data yang dikirim dari form login
$username = $_POST['username'];
$password = md5($_POST['password']);
 
 
// menyeleksi data user dengan username dan password yang sesuai
$login = mysqli_query($koneksi,"SELECT * from tb_user where user='$username' and pass='$password'");
// menghitung jumlah data yang ditemukan
$cek = mysqli_num_rows($login);
 
// cek apakah username dan password di temukan pada database
if($cek > 0){
 
	$data = mysqli_fetch_array($login);
 
	// cek jika user login sebagai admin
	if($data['lv']=="admin"){
 
		// buat session login dan username
		$_SESSION['user'] = $username;
		$_SESSION['lv'] = "admin";
		$_SESSION['id']=$data['id'];
		


		// alihkan ke halaman dashboard admin
		header("location:admin/index.php?p=beranda-admin");
	// cek jika user login sebagai pengurus
	}else if($data['lv']=="Guru"){
		// buat session login dan username
		$_SESSION['user'] = $username;
		$_SESSION['lv'] = "Guru";
		$_SESSION['id']=$data['id'];
		// alihkan ke halaman dashboard pengurus
		header("location:guru/index.php?p=beranda-guru");
 
	}else if($data['lv']=="Siswa"){
		// buat session login dan username
		$_SESSION['user'] = $username;
		$_SESSION['lv'] = "Siswa";
		$_SESSION['id']=$data['id'];
		// alihkan ke halaman dashboard pengurus
		header("location:siswa/index.php?p=beranda-siswa");
 
	}else if($data['lv']=="ortu"){
		// buat session login dan username
		$_SESSION['user'] = $username;
		$_SESSION['lv'] = "ortu";
		$_SESSION['id']=$data['id'];
		// alihkan ke halaman dashboard pengurus
		header("location:ortu/index.php?p=beranda-ortu");
 
	}else if($data['lv']=="Kepsek"){
		// buat session login dan username
		$_SESSION['user'] = $username;
		$_SESSION['lv'] = "Kepsek";
		$_SESSION['id']=$data['id'];
		// alihkan ke halaman dashboard pengurus
		header("location:kepsek/index.php?p=beranda-kepsek");
 
	}else{
 
		// alihkan ke halaman login kembali
		header("location:login/index.php?pesan=gagal");
	}	
}else{
	header("location:login/index.php?pesan=gagal");
}
 
?>

 ?>