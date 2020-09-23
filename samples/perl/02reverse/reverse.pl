#!/usr/bin/perl

$started = 0;
foreach my $temp (reverse @ARGV) {
    if (not $started) {
        $started = 1;
    } else {
        print(" ");
    }
    print("$temp");
}
print("\n");
