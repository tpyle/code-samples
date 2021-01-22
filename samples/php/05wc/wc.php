<?php

if ($argc > 2) {
    fwrite(STDERR, sprintf("Error: Usage ./%s [<file>]\n", $argv[0]));
    exit(1);
}

$file = STDIN;
if ($argc == 2) {
    $file = fopen($argv[1], "r");
}
$lines = 0;

while (! feof($file)) {
    fgets($file);
    $lines += 1;
}

printf("%d\n", $lines);

?>
