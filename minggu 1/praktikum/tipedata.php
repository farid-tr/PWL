<?php
$nim = "A11.2020.80014";
$nama = 'Farid Taufiqur Rohman';
$umur = 27;
$nilai = 100;
$status = TRUE;
echo "NIM : " . $nim . "<br>";
echo "Nama : $nama<br>";
print "Umur : " . $umur; print "<br>";
printf ("Nilai : %.3f<br>", $nilai);
if ($status)
echo "Status : Aktif";
else
echo "Status : Tidak Aktif";
?>