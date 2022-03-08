<?php
    $a = 1;
    $faktorial = $a;
    $angka=4;
  
    for($a = 1; $a <= $angka ; $a++){
      $faktorial = $faktorial * $a--;
      $a++;
    }
    
    echo "\tAngka Faktorial : ";
    echo $angka;
    echo "<br>";
    
    echo "\tHasil Perhitungan Faktorial adalah : ";
    echo $faktorial;
?>