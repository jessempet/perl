use strict;
use warnings;
use 5.22.0;
use List::Util 'shuffle';

# Generating a 4 number code with unique numbers 
# Using the shuffle function from List::Util
# Note to Liam: I AM ONLY ASKING THE USER 
# FOR A UNIQUE SET OF NUMBERS
my @code = (shuffle 0..9)[0..3];

# Incremented globals 
my $red = 0;
my $white = 0;
my $num_guesses = 0;


while ($red != 4)
{
	

# General Game loop that only terminates if all
# Numbers are guessed within their correct position

	# Generating an index to use for checking the generated code
	my $index = 0;

	# Repeatedly asked until all numbers are guessed
	print "Guess a number(no duplicates): ";
	my $guess = <>;
	chomp($guess);

	# Checking to see if the guess is of the right length
	# jumping out and back to beginning of look if not the right length
	if (length $guess != 4)
	{
		say "Re-enter guess of length 4";
		next;
	}
	# Post-incrementing the number of guesses to tally them
	# And splitting them in to elements of an array
	$num_guesses++;
	my @guess_array = split('',$guess);

	# Lopping through each element in guesses array
	foreach my $element (@guess_array)
	{
		# Conditional checking if each element in guess array matches
		# exact element and position of code array
		if ($code[$index] == $element)
		{
			# increase the number of red flags
			# Due to correct guess
			$red++;	
		}

		# Checks to see if the element of the guess array is
		# at any position in the code array, but only if it is not
		# at the correct position due to first part of the conditional
		elsif (grep {$_ == $element} @code)
		{
			#increment the white flag
			$white++;
		}
		$index++;
	
	}
	# Independent of looping through each element, need to display
	# Certain output based on number of flags
	if ($red == 0 && $white >0)
	{
		say "$white white";
		#need to set the white flag back to 0 so flags don't add over 4
		$white = 0;	
	}
	
	elsif ($red == 4)
	{
		# You have won the game, just adding a conditional
		# For grammatical purposes
		if ($num_guesses == 1)
		{
			say "You win! It took you $num_guesses guess.";
		}
		else
		{
			say "You win! It took you $num_guesses guesses.";
			say "The code was @code!";
		}
	}
	elsif ($white ==0 && $red >0)
	{
		say "$red red";
		# Setting red to 0 to prevent more than 4 flags from occurring
		$red = 0;
	}
	elsif ($white == 0 && $red == 0)
	{
		# If there are no matches 
		say "No Matches";
	}
	else
	{
		# Clearing white AND red to recount on next guess
		say "$white white, $red red";
		$white = 0;
		$red = 0;
	}
}

