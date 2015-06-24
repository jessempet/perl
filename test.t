use strict;
use warnings;

use Test::More tests => 2 + 4;
use Test::Number::Delta within => 1e-1;

my %students = (
	matt => [34, 82, 55, 88, 62, 26, 88, 98, 52, 41],
	mark => [55, 26, 86, 72, 74, 32, 7, 8, 64],
	luke => [3.21, 3.14, 2.66, 1.72, 3.1, 3.11, 2.22],
	john => [100],
);

my @data = (
	['matt', 62.6 ],
	['mark', 47.1 ],
	['luke', 2.7 ],
	['john', 100 ],
);


require_ok('Degrader') or BAIL_OUT 'Unable to load Degrader.pm';

can_ok(__PACKAGE__, 'degrade') or BAIL_OUT 'Required function "degrade" missing';

foreach(@data) {
	delta_ok(
		degrade(\%students, $$_[0]), $$_[1],
		"$$_[1] is degrade of (@{$students{$$_[0]}})"
	);
}
