use strict;
use warnings;
use 5.22.0;

open(my $fh, '<', 'reader.pl')
	or die "Could not open file: $:";

while (<$fh>) {
	print;
	}
