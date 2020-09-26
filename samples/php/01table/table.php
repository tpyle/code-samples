<?php

define("LIMIT", 5);


for ($a = 0; $a <= LIMIT; $a++) {
    if ($a == 0) {
        printf("%-3s", "");
    } else {
        printf("%-3d", $a);
    }
    for ($b = 1; $b <= LIMIT; $b++) {
        if ($a == 0) {
            printf("%-3d", $b);
        } else {
            printf("%-3d", $a * $b);
        }
    }
    printf("\n");
}

?>
