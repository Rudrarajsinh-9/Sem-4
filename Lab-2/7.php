<html>
    <head>
        <title>LAB_2_7</title>
    </head>
    <body>
    <?php

$num1 = 1;
$num2 = 500;
       echo  "ARMSRTONG NUMBER BETWEEN $num1 AND $num2 IS :";
    for ($i = $num1 + 1;$i < $num2; ++$i) 
    {   
        $x = $i;
        $n = 0;
        while ($x != 0) 
        {
            $x = (int)($x / 10);
            ++$n;
        }
 
        $pow_sum = 0; 
        $x = $i;
        while ($x != 0) 
        {
            $digit = $x % 10;
            $pow_sum += (int)(pow($digit, $n));
            $x = (int)($x / 10);
        }

        if ($pow_sum == $i) 
            echo  " " .$i;     
    }
    ?>
    </body>
</html>