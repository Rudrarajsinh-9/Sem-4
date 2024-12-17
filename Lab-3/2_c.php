<html>
    <head>
        <title>LAB_3_2_3</title>
    </head>
    <body>
	<pre>
    <?php
		for ($i = 5; $i >= 1; $i--) 
		{
			for ($j = 1; $j <= 5 - $i; $j++) 
			{
				echo " ";
			}
			for ($k = 1; $k <= $i; $k++) 
			{
				echo "*";
			}
			echo "<br>";
		}
    ?>
	</pre>
    </body>
</html>