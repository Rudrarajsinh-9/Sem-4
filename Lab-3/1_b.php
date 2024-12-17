<html>
    <head>
        <title>
            Lab_3B_1b
        </title>
    </head>
    <body>
        <pre>
        <?php
        for ($i = 0; $i <= 5; $i++) 
        {
            for ($k = 0; $k < 6 - $i; $k++) 
            {
                echo " ";
            }
            for ($j = 0; $j < $i; $j++) 
            {
                echo "* ";
            }
            echo "<br>";
        }
        ?>
        </pre>
    </body>
</html>