<html>
    <head>
        <title> Lab_2_3</title>
    </head>
    <body>
<?php

$n = 10;

$sum = 0;

for ($i = 2; $i <= $n; $i += 2) 
{
    $sum += $i;
}

echo "The sum of all even numbers between 1 and $n is: $sum\n";
?>
</body>
</html>