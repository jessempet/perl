use strict;
use warnings;
use 5.22.0;

sub sum {
	unless(defined wantarray){
	warn "sum() used in void context\n"
	}
	my $total = 0;
	foreach (@_) {
		if (ref) {
			die "cannot sum a reference";
		}
		$total += $_ foreach (@_);
	}
	$total;

}

sum(1..10,["what"]);
