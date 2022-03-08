<?php
    $a = 1;
    $faktorial = $a;
    $angka=6;
do {$faktorial = $faktorial * $a++;
	} while ($a <= $angka);

    echo "\tAngka Faktorial : ";
    echo $angka;
    echo "<br>";
    
    echo "\tHasil Perhitungan Faktorial adalah : ";
    echo $faktorial;
?>