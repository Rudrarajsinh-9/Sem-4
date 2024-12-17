<html>
<head>
<title> Lab 1 A5 </title>
</head>
<body>

<?php
$a = 12;
$b = 25;
$c = 18;

if ($a >= $b && $a >= $b) 
{
    $greatest = $a;
} 
elseif ($b >= $a && $b >= $c) 
{
    $greatest = $b;
}
 else 
{
    $greatest = $c;
}

echo "The greatest number is: $greatest";
?>

</body>
</html>