use strict;
use warnings;
use 5.22.0;
use utf8;
print "Enter the temperature in degrees Fahrenheit: ";
my $fahrenheit = <>;
chomp($fahrenheit);
my $celcius = ((5 / 9) * ($fahrenheit - 32));
my $kelvin = $celcius + 273.15;
$fahrenheit = sprintf("%.1f\N{DEGREE SIGN}", $fahrenheit);
$celcius = sprintf("%.1f\N{DEGREE SIGN}", $celcius);
$kelvin = sprintf("%.1f\N{DEGREE SIGN}", $kelvin);

say($fahrenheit . "F = " . $celcius . "C = " . $kelvin . "K");

