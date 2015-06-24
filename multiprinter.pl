use strict;
use warnings;
use 5.22.0;

print "Enter a character: ";
my $symbol = <>;
chomp($symbol);
print "Enter a number: ";
my $number = <>;

my $multiplier =  $symbol x $number;

say $multiplier;
