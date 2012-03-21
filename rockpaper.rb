# A simple rock/paper/scissors game
# created 3/15/2012

puts "Welcome to Rock/Paper/Scissors!"
puts "Let's play a game."

compscore = 0
playerscore = 0

options = ["rock","paper","scissors"]

def prompt
	print "> "
end

while true

	# get the computer's pick
	comp_pick = options.sample	

	puts "I've got my pick!  What's yours? (ENTER to exit)"
	
	# get input from the user
	prompt(); player_pick = gets.chomp()

	# exit if the player is done
	break if player_pick.empty?

	puts "Computer chose: " + comp_pick
	puts "You chose: " + player_pick

	if player_pick == comp_pick
		
		puts "It's a draw!"
		
	elsif player_pick == "scissors"
		
		if comp_pick == "rock"
			puts "You lose!"
		else
			puts "You win!"
		end

	elsif player_pick == "rock"
		
		if comp_pick == "paper"
			puts "You lose!"
		else
			puts "You win!"
		end
	elsif player_pick == "paper"

		if comp_pick == "scissors"
			puts "You lose!"
		else
			puts "You win!"
		end
	else
		puts "I don't understand.  Please go again."
	end
end
