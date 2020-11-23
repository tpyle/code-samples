#!/usr/bin/perl
use strict;
use warnings;

my $started = 0;
foreach my $temp (reverse @ARGV) {
    if (not $started) {
        $started = 1;
    } else {
        print(" ");
    }
    print("$temp");
}
if ($started) {
    print("\n");
}
