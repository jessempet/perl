use strict;
use warnings;
use 5.22.0;

my @square_nums = grep {$_%3 == 0} map {$_**2} (1..100);
say join ", ",@square_nums;
