use strict;
use warnings;
use 5.22.0;

use Car;

my $gremlin = Car->new('AMC', 'Gremlin');
$gremlin->honk();
$gremlin->drive();
$gremlin->print();
$gremlin->paint('blue');
#Car->print($gremlin);
#Car->paint($gremlin, "blue");
