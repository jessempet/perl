use strict;
use warnings;
use 5.22.0;

my @data = map { my $y = $_; map { $y * $_ } (2..5)} (2..5);
say join ", ", @data;
