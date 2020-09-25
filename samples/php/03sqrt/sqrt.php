<?php

define("ACCURACY", 0.00000001);


function findSqrt($number) {
    $x = $number;
    $y = 1;
    while ($x - $y > ACCURACY) {
        $x = ($x + $y) / 2;
        $y = $number / $x;
    }
    return $x;
}

if ($argc < 2) {
    fwrite(STDERR, sprintf("Error: Usage ./%s <number> [<number> ...]\n", $argv[0]));
    exit(1);
}

foreach (array_slice($argv, 1) as &$arg) {
    $number = floatval($arg);

    if (strval($number) != $arg) {
        fwrite(STDERR, sprintf("Error: Expected to receive a number. Received '%s'\n", $arg));
        exit(2);
    }

    printf("%f => %f\n", $number, findSqrt($number));
}

?>
