<html>
    <head>
        <title>Lab_3_3_a</title>
    </head>
    <body>
	<pre>
	<?php
    for ($i = 1; $i <= 5; $i++) 
    {
        // Print leading spaces for the current row
        for ($j = 1; $j <= 5 - $i; $j++) 
        {
            echo " ";
        }

        // Print stars and spaces in the middle

        for ($k = 1; $k <= (2 * $i - 1); $k++) 
        {
            if ($i == 5) 
            {
                // Print the full line of stars in the last row
                echo "*";
            } elseif ($k == 1 || $k == (2 * $i - 1)) 
            {
                // Print stars at the beginning and end for all rows except the last
                echo "*";
            } 
            else 
            {
                // Print spaces in between stars
                echo " ";
            }
        }
        echo "<br>";  // Move to the next line after each row
    }
    ?>
	</pre>
    </body>
</html>