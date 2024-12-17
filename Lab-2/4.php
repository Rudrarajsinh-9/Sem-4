<html>
    <head>
        <title>Lab2_4</title>
    </head>
    <body>
<?php
$n = 10; 
$a = 0;
$b = 1;

echo "Fibonacci series: ";

echo $a . ", " . $b;

for ($i = 3; $i <= $n; $i++)  
{
    $c = $a + $b;
    echo ", " . $c;
    $a = $b;
    $b = $c;
}
?>
    </body>
</html>
