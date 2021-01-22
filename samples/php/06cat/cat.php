<?php

if ($argc > 2) {
    fwrite(STDERR, sprintf("Error: Usage ./%s [<file>]\n", $argv[0]));
    exit(1);
}

$file = STDIN;
if ($argc == 2) {
    $file = fopen($argv[1], "r");
}

while (! feof($file)) {
    print(fgets($file));
}

?>