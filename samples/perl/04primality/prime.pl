#!/usr/bin/perl
use warnings;
use strict;

use Math::Complex;

sub IsPrime {
    my ($number) = @_;
    my $limit = sqrt($number);
    for (2 .. $limit) {
        if ($number % $_ == 0) {
            return 0;
        }
    }

    return 1;
}


my $len = scalar(@ARGV);
if ($len == 0) {
    print STDERR "Error: Expected to receive $0 <number> [<number> ...]\n";
    exit(1);
}


foreach my $temp (@ARGV) {
    my $number = int($temp) or die "Expected to receive a number. Received '$temp'\n";

    my $prime = IsPrime($number) ? "true" : "false";
    print("$number => $prime\n");
}
