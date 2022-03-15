<html>
<head><title>Form</title></head>
	<body>
		<form action="" method="post" 
name="input">
<style>
table {
  border-collapse: collapse;
  width: 30%;
}

td, th {
  border: 2px solid #eeee;
  text-align: left;
  padding: 8px;
}

</style>
</head>
<body>
<h2>NILAI MAHASISWA </h2>
<table>
  </tr>
  <tr>
    <td>NIM</td>
    <td><input type="text" name="nim"></td>
  </tr>
  <tr>
    <td>Program Studi</td>
    <td><input type="text" name="progam"></td>
  </tr>
  <tr>
    <td>Nilai Tugas</td>
    <td><input type="text" name="tugas"></td>
  </tr>
  <tr>
    <td>Nilai UTS</td>
    <td><input type="text" name="uts"></td>
  </tr>
  <tr>
    <td>Nilai UAS</td>
    <td><input type="floatval" name="uas"></td>
  </tr>
  <tr>
    <td>Catatan Khusus</td>
    <td><input type="text" name="catatan"></td>
  </tr>
  <tr>
    <td> </td>
    <td><input type="submit" name="Input" value="SIMPAN">
	</tr>
</table>
<?php
if (isset($_POST['Input'])) {
	$nim = $_POST['nim'];
	$progam = $_POST['progam'];
	$tugas = $_POST['tugas'];
	$uts = $_POST['uts'];
	$uas = $_POST['uas'];
	$catatan = $_POST['catatan'];
	echo "<b>HASIL NILAI:</b> <br>";
	echo $nim. "<br>";
	echo $progam. "<br>";
	echo $tugas. "<br>";
	echo $uts. "<br>";
	echo $uas. "<br>";
	echo $catatan. "<br>";
	
	
}
?>