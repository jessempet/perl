use strict;
use warnings;
use 5.22.0;



my $mtv = 'I want my';

say $mtv . " " . $mtv;
#length in PERL
say length($mtv) + 1776;
say length($mtv) + length(1776);
say index($mtv,' ');

my $sentence = "the tip of the tongue the teeth";
my $search = "the";
#can use print to get rid of need for a chomp
say substr($sentence, index($sentence, 'tee'), 3);
#This is an input
print 'Enter your birth year: ';
my $year = <>;
say "hello $year";
say 'You are: ' . (2015 - $year) . ' years old';

