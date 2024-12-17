<?php
 $numbers = array(10,20,40,array(50,70));
 print_r($n);
	echo "<br>";
	for ($i = 0; $i < count($n); $i++) 
    {
		if (is_array($n[$i])) 
        { 
			for ($j = 0; $j < count($n[$i]); $j++) 
            {
				echo $n[$i][$j] . "</br>";
			}
		} 
        else 
        {
			echo $n[$i] . "</br>";
		}
        
	}
    echo "<br>";
	$a = array(10, 20,array(20, 40), 60);
	print_r($a);
	echo "<hr/>";
	foreach ($a as $key => $value) 
    {
		if (is_array($value)) 
        {
	
			for ($j = 0; $j < count($value); $j++) 
            {
				echo $value[$j] . "</br>";
			}
		} 
        else 
        {
			
			echo $value . "</br>";
		}
	}
	echo "<hr>";
?>