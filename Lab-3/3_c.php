<html>
    <head>
        <title>Lab_3 c_3</title>
    </head>
    <body>
	<pre>
	<?php
    for ($i = 1; $i <= 5; $i++) 
	{
        for ($j = 1; $j<=$i; $j++) 
		{
            echo " ";
        }
		for($j=$i;$j<=5;$j++)
		{
		echo $j." ";
		}
	        echo"<br>";
	}
	
	
	    for ($i = 5-1; $i >= 1; $i--) 
	{
        for ($j = 1; $j<$i; $j++) 
		{
            echo " ";
        }
		for($j=$i;$j<=5;$j++)
		{
		echo $j." ";
		}
	        echo"<br>";
	}
	
    ?>
	</pre>
    </body>
</html>