use strict;
use warnings;
use 5.22.0;

#User input:

print "Enter the number of kilometers: ";
my $kilometers = <>;

#conversion from kilometers to miles
my $kilometers_to_miles = $kilometers * 0.62 ;

say $kilometers_to_miles;
