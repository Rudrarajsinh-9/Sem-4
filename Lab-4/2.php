<?php
$menu = array("pizza"=>40,"burger"=>50," fries"=>60);

var_dump ("$menu");
echo($menu["pizza"]);
print_r("$menu");
foreach($a as $b=>$menu)
{
    echo $a."=>".$b."</br>";
}
echo"<hr/>";
$k = array_keys($menu);
$v = array_values($menu);
for($i=0;$i<count($menu);$i++)
{
    echo $k[$i]."=>".$v[$i]."<br>";
}
?>