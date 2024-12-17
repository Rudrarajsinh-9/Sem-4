<html>
<head>
<title> Lab1_8 </title>
</head>
<body>
	<?php
	$unit=252;
	$bill;
	if($unit<=50)
	{
		$bill=$unit*3;
	}
	else if($unit>=51 && $unit<=150)
	{
		$bill=(50*3)+($unit-50)*3;
	}
	else if($unit>=151 && $unit<=250)
	{
		$bill=(50*3)+(100*4)+($unit-150)*4;
	}
	else{
		$bill=(50*3)+(100*4)+(100*5)+($unit-250)*6;
	}
	echo $bill;
	
?>
</body>
</html>