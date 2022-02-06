<?php 
//konfigurasi database
	$host	= "localhost";
	$user	= "root";
	$pas	= "";
	$db		= "apg";

//membuat koneksi ke databse dengan konfigurasi di atas
	$con = mysqli_connect($host, $user, $pas, $db);

//memcoba koneksi dengan if
	if (mysqli_connect_errno) {
		echo "Koneksi gagal!". mysql_connect_error();
	}
 ?>