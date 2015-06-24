use strict;
use warnings;
use 5.22.0;
use Math::Trig;

print "Enter the radius of the sphere: ";
my $radius = <>;

my $volume = sprintf("%.3f",(Math::Trig::pi * (4/3) * $radius**3));
my $surface_area = sprintf("%.3f",(4 * (Math::Trig::pi * $radius **2)));
printf("Volume = %16s\nSurface Area = %s\n", $volume, $surface_area);

