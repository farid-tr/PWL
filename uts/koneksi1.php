<?php

$host	="localhost";
$user	="root";
$pass	="";
$db		="Latihantekweb1";

$conn	=mysqli_connect($host,$user,$pass,$db);

if ($conn == false)
 {
	echo "Koneksi Ke server gagal.";
	die();
}

?>