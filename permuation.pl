use strict;
use warnings;
use 5.22.0;
my @a = glob "{1,2,3,4,5,6,7,8,9}" x 4;
print $a[0] . "\n";

print scalar @a;

sub permutations {
	return glob "{1,2,3,4,5,6,7,8,9}" x 4;
	}
my @b = permutations();

print $b[0]. "\n";

	
