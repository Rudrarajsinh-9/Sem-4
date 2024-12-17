 <html>
    <head>
        <title> Lab_2_1</title>
    </head>
    <body>
        <?php
        $n = 10;
        $i = 0;
        while ($i < $n) 
        { 
            echo ++$i."</br>" ;
        }
        $i = 1;
        do {
            echo $i . " ";
            $i++;
        } 
        while ($i <= $n);
        {
        echo "<br>";
        }
        for ($i = 1; $i <= $n; $i++) 
        {
            echo $i . " ";
        }
        ?>
    </body>
 </html>
