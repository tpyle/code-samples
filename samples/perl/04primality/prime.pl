#!/usr/bin/perl
use Math::Complex;

sub IsPrime {
    my ($number) = @_;
    $limit = sqrt($number);
    for (2 .. $limit) {
        if ($number % $_ == 0) {
            return 0;
        }
    }

    return 1;
}


$len = scalar(@ARGV);
if ($len == 0) {
    print STDERR "Error: Expected to receive $0 <number> [<number> ...]\n";
    exit(1);
}


foreach my $temp (@ARGV) {
    my $number = int($temp) or die "Expected to receive a number. Received '$temp'\n";

    $prime = IsPrime($number) ? "true" : "false";
    print("$number => $prime\n");
}
