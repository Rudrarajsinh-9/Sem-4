<html>
    <head>
        <title>LAB_3_2_1</title>
    </head>
    <body>
	<pre>
    <?php
	
		for($i=1;$i<=5;$i++)
		{
			for($j=1;$j<=(5-$i);$j++)
			{
				echo" ";
			}
			for($j=1;$j<=$i;$j++)
			{
				echo"*";
			}
			echo "</br>";
		}
    ?>
	</pre>
    </body>
</html>