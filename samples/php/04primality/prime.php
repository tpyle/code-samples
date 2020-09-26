<?php

function isPrime($number) {
    $limit = sqrt($number);
    for ($n = 2; $n <= $limit; $n++) {
        if ($number % $n == 0) {
            return false;
        }
    }
    return true;
}

if ($argc < 2) {
    fwrite(STDERR, sprintf("Error: Usage ./%s <number> [<number> ...]\n", $argv[0]));
    exit(1);
}

foreach (array_slice($argv, 1) as &$arg) {
    $number = intval($arg);

    if (strval($number) != $arg) {
        fwrite(STDERR, sprintf("Error: Expected to receive a number. Received '%s'\n", $arg));
        exit(2);
    }

    $value = isPrime($number) ? "true" : "false";

    printf("%d => %s\n", $number, $value);
}

?>
