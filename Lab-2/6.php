<html>
    <head>
        <title>LAB_2_6</title>
    </head>
    <body>
    <?php
    $x=123;

$lastDigit = $x % 10;

$firstDigit = $x; 
while ($firstDigit >= 10) 
{
    $firstDigit = (int)($firstDigit / 10);
}

$sum = $firstDigit + $lastDigit;

echo "Sum of the first and last digit of $x is: $sum";

    ?>
    </body>
</html>