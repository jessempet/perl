use strict;
use warnings;
use 5.22.0;

print "Enter some numbers to double: ";
my @numbers =split(" ",<>);

my @doubles = map {$_ * 2} @numbers;
say join " ",@doubles;

