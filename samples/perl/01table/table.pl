#!/usr/bin/perl
use strict;
use warnings;

use constant LIMIT => 5;

for $a (0 .. LIMIT) {
    if ($a == 0) {
        print("   ");
    } else {
        print(sprintf("%-3d", $a));
    }
    for $b (1 .. LIMIT) {
        if ($a == 0) {
            print(sprintf("%-3d", $b));
        } else {
            print(sprintf("%-3d", $a * $b));
        }
    }
    print("\n");
}
