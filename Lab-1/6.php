<html>
    <head>
        <title> Lab_1_6</title>
    </head>

        <body>
<?php
$a = 121;
$ori = $a;
$rev = 0;

while ($a > 0) 
{
    $ld = $a % 10; 
    $rev = ($rev * 10) + $ld; 
    $a = (int)($a / 10); 
}

if ($ori === $rev) 
{
    echo "$ori is a palindrome.";
} 
else 
{
    echo "$ori is not a palindrome.";
}

?>
        </body>
</html>