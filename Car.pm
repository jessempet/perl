use strict;
use warnings;
use 5.22.0;

package Car {
	
	sub new {
		my $class = shift;
		my ($make, $model) = @_;
		my $car = {
			make => $make,
			model => $model,
		};
		bless $car, $class;
	}

	sub drive {
		say "vroom vroom";
	}
	sub honk {
		say "beep beep";	
	}
	sub print {
		my $self = shift;
		say "$$self{make} $$self{model}";
	}
	sub paint {
		my $self = shift;
		my $color = shift;
		say "$$self{make} $$self{model} is now $color";
	}	

}

1;
