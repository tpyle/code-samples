<?php

ksort($_ENV);
foreach ($_ENV as $key => $value) {
    printf("%s=%s\n", $key, $value);
}

?>