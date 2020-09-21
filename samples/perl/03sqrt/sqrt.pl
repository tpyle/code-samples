#!/usr/bin/perl

sub FindSqrt {
    my ($number) = @_;
    $x = $number;
    $y = 1;
    $e = 0.000001;
    while ($x-$y > $e) {
        $x = ($x + $y) / 2;
        $y = $number / $x;
    }

    return $x;
}


$len = scalar(@ARGV);
if ($len == 0) {
    print STDERR "Error: Expected to receive $0 <number> [<number> ...]\n";
    exit(1);
}


foreach my $temp (@ARGV) {
    my $number = int($temp) or die "Expected to receive a number. Received '$temp'\n";

    $val = FindSqrt($number);
    print("$number => $val\n");
}
