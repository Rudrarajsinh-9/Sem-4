<html>
    <head>
        <title>Lab_3_b_1</title>
    </head>
    <body>
	<pre>
	<?php
    for ($i = 1; $i <= 5; $i++) 
	{
        for ($j = 1; $j<=(5-$i); $j++) 
		{
            echo " ";
        }
		$value=1;
		for($j=1;$j<=$i;$j++)
		{
		echo $value." ";
		$value =(int) ($value *($i-$j)/($j));
		}
	        echo"<br>";
	}
	
    ?>
	</pre>
    </body>
</html>