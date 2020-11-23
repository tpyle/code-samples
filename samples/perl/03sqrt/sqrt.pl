#!/usr/bin/perl
use strict;
use warnings;

use constant ACCURACY => 0.000001;

sub FindSqrt {
    my ($number) = @_;
    my $x = $number;
    my $y = 1;
    while ($x-$y > ACCURACY) {
        $x = ($x + $y) / 2;
        $y = $number / $x;
    }

    return $x;
}


my $len = scalar(@ARGV);
if ($len == 0) {
    print STDERR "Error: Expected to receive $0 <number> [<number> ...]\n";
    exit(1);
}


foreach my $temp (@ARGV) {
    my $number = int($temp) or die "Expected to receive a number. Received '$temp'\n";

    my $val = FindSqrt($number);
    print("$number => $val\n");
}
