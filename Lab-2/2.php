<html>
    <head>
        <title> Lab_2_2</title>
    </head>
    <body>
        <?php
        $n = 10;
        $i = 0;
        while ($i < $n) 
        { 
            echo ++$i."</br>" ;
            $i++;
        }
        $i = 1;
        do {
            echo $i . " ";
            $i += 2;
        } 
        while ($i < $n * 2);
        {
            echo "<br>";
        }
        
        for ($i = 1; $i < $n * 2; $i += 2) 
        {
            echo $i . " ";
        }
        ?>
    </body>
 </html>