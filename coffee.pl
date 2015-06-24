use strict;
use warnings;
use 5.22.0;

print "Enter the amount of coffee in pounds: ";
my $pounds_of_coffee = <>;
#Cost of coffee
my $price_per_pound = 10.50;
my $shipping_fee = 1.50;

my $total_cost = ($pounds_of_coffee * $price_per_pound) + $shipping_fee;

$total_cost = sprintf('%.2f',$total_cost);

say '$' . $total_cost
