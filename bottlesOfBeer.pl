###############################
# Author: Jesse Pet           #
# Program: 99 bottles of beer #
# Class: Programming Perl     #
# Assignment 1		      #
###############################

use strict;
use warnings;
use 5.22.0;

# starting with a number of bottles to decrement
# my $num_bottles = 99;

#challange
my $num_bottles = $ARGV[0];

# Setting up a while loop to decrement bottles (until there are no more)
while ($num_bottles > 0)
{
	# Since there will be one less bottle on the wall...
	# storing the variable before conditionals
	my $one_less = $num_bottles - 1;

	# If-elsif-else conditional branch
	
	# For most cases...
	if ($num_bottles >=3){
		say("$num_bottles of beer on the wall!\n$num_bottles bottles of beer!\nTake one down\nAnd pass it around\n$one_less bottles of beer on the wall!\n");
		
	}
	# The syntax of the song changes with one beer on the wall
	elsif ($num_bottles == 2) {
		say("$num_bottles bottles of beer on the wall!\n$num_bottles bottles of beer!\nTake one down\nAnd pass it around\n$one_less bottle of beer on the wall!\n");	
	}

	# With no bottles left, need to state that in the song
	else {
		say("$num_bottles bottle of beer on the wall!\n$num_bottles bottle of beer!\nTake one down\nAnd pass it around\nNo more bottles of beer on the wall!\n");
	}
	
	# Decrement the total number of bottles by one
	--$num_bottles;
}
