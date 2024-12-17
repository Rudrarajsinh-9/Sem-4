<html>
    <head>
        <title>LAB_3_1</title>
    </head>
    <body>
    <?php
		$count=1;

        for ($i = 1; $i <= 5; $i++) 
        {
            for ($j = 1; $j <=$i; $j++) 
            {
                echo "$count ";
				$count++;
                
            }
            echo "<br>";
        }
    ?>
    </body>
</html>