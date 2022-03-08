<?php
    $a = 1;
    $faktorial = $a;
    $angka=5;
  
    while($a <= $angka){
      $faktorial = $faktorial * $a;
      $a++;
    }
    
    echo "\tAngka Faktorial : ";
    echo $angka;
    echo "<br>";
    
    echo "\tHasil Perhitungan Faktorial adalah : ";
    echo $faktorial;
?>