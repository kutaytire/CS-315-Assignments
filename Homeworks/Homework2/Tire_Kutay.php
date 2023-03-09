<!DOCTYPE html>
<html>
<body>

<?php

echo "Testing Conditional Exit<br>";
for($x = 0; $x < 5; $x++) {

	echo "The value of \$x is $x <br>";
}

echo "<br>Testing Unconditional Exit<br>";
$index = 0;
while($index < 8) {

	echo "The value of \$index is $index <br>";
    $index++;
    if($index == 4) {
    	break;
    }
}

echo "<br> Testing Labeled Exit";
for($i = 0; $i < 8; $i++) {

	echo "<br>The value of \$i is $i <br><br>";
    
    $j = 0;
    while($j < 10) {
    
    	if ($i == 3) {
        	break 2;
        }
        
        if($j == 4) {
        
        	break 1;
        }
        
        echo "The value of \$j is $j <br>";
        $j++;
    
    }
}  

echo "Testing Unlabeled Exit<br>";
$index2 = 0;
while($index2 < 5) {

	echo "The value of \$index2 is $index2 <br>";
    $index2++;
    if($index2 == 3) {
    	break;
    }
}


echo "<br>Testing Unlabeled Continue (The value 2 will be skipped.) <br>";
for ($a = 0; $a < 5; $a++) {
	if ($a == 2) { 
 		continue; 
 	}
 	echo "$a ";
}

echo "<br>Testing Labeled Continue <br>";
for ($n = 0; $n < 5; $n++) {

	echo "<br>The value of \$n is $n in the outer loop<br>";
	$m = 0;
    while($m < 3) {
    	
        if ($n == 2) {
        
        	continue 2;
        }
        
        echo "The value of \$m is $m in the inner loop<br>";
        $m++;
    
    }
 	
	
}



?>

</body>
</html>
