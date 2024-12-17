<?php
    $array = array(1,2,3) ;
    echo count ($array)."<hr/>";

    echo sizeof ($array)."<hr/>";

    echo array_push ($array,4) ;
    echo "<hr/>";
    print_r($array);

    echo array_pop ($array);
    echo "<hr/>";
    print_r($array);

    echo array_shift( $array);  
    echo "<hr/>";
    print_r($array);

    echo array_unshift( $array,5,6,7) ;
    echo "<hr/>";
    print_r($array);

    echo in_array(8, $array);
    echo "<hr/>";

    $b = in_array(8, $array);
    if ($b == true) 
    {
        echo"found";
    }
    else
    {
        echo "not found";
    }

    echo "<hr/>";

    $b = is_array( $array );
    if ($b == true)
    {
        echo "$array is array";
    }
    else
    {
        echo "$array is not array";
    }
    
    echo "<hr/>";

    echo array_product($array);

    echo "<hr/>";

    echo array_sum($array);

    echo "<hr/>";

    echo min($array);

    echo "<hr/>";

    echo max($array);

    echo "<hr/>";

    echo sort($array);
    print_r( $array );

    echo "<hr/>";

    echo rsort($array);
    print_r( $array );

    echo "<hr/>";

    echo shuffle($array);
    print_r( $array );

    echo "<hr/>";

    array_push($array,5,6,7,20,22,25) ;
    print_r( $array );

    echo "<hr/>";

    echo array_unique($array) ;
    print_r( $array );

    echo "<hr/>";

    $a = array_unique($array) ;
    print_r( $array );

    echo "<hr/>";

    $k = array_unique($a) ;
    echo "key of unique array";
    print_r( $k );

    echo "<hr/>";

    echo array_reverse($a) ;
    print_r( $array );

    echo "<hr/>";

    $a1 = array(1,2,3,4,5) ;
    $a2 = array(4,5,6,7,8,9,10) ;
    $merge_array = array_merge($a1, $a2) ;
    echo"Merged array 1 and array 2";
    print_r( $merge_array );

    echo "<hr/>";

    $diff_array = array_diff($a1, $a2) ;
    echo"diff_array 1 and array 2";
    print_r( $diff_array );

    echo "<hr/>";
?>