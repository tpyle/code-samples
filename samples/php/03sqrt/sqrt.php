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

if ($argc != 2) {
    fwrite(STDERR, sprintf("Error: Usage ./%s <number>\n", $argv[0]));
    exit(1);
}

$number = floatval($argv[1]);
if (strval($number) != $argv[1]) {
    fwrite(STDERR, sprintf("Error: Expected to receive a number. Received '%s'\n", $argv[1]));
    exit(2);
}

echo sprintf("%f\n", findSqrt($number));

?>
