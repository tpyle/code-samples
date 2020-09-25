<?php

$start = true;
foreach (array_reverse(array_slice($argv, 1)) as &$arg) {
    if (!$start) {
        printf(" ");
    } else {
        $start = false;
    }
    printf("%s", $arg);
}

printf("\n")

?>
