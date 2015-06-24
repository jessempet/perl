use strict;
use warnings;
use 5.22.0;

print "Enter some names: ";
my @names = split " ", <>;
chomp @names;

my @sorted_names = sort @names;

say join ", ", @sorted_names;
