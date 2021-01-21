use warnings;
use strict;

my $len = scalar(@ARGV);
if ($len > 1) {
    print STDERR "Error: Expected to receive $0 [<file>]\n";
    exit(1);
}

while (<>) {
    print $_;
}
