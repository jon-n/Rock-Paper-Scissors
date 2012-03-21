# simple rock/paper/scissors game
# created 3/15/2012
# version 2 uses a case when statement from Annie Lowrey's example

puts "Welcome to Rock/Paper/Scissors!"
puts "Let's play a game."

compscore = 0
playerscore = 0
draw_count = 0
round_count = 1

options = ["rock","paper","scissors"]

def prompt
	print "> "
end

while true

	# get the computer's pick
	comp_pick = options.sample	

	puts "*" * 30
	puts "Round: " + round_count.to_s
	puts "Scores: You " + playerscore.to_s + " Computer " + compscore.to_s + " Draws " + draw_count.to_s
	puts "I've got my pick!  What's yours? (ENTER to exit)"
	
	# get input from the user
	prompt(); player_pick = gets.chomp()

	# exit if the player is done
	break if player_pick.empty?

	puts "Computer chose: " + comp_pick
	puts "You chose: " + player_pick

	case [player_pick, comp_pick]

	when ['paper','paper'], ['rock','rock'], ['scissors','scissors']
		
		draw_count += 1
		puts "It's a draw!"
		
	when ['rock','scissors'], ['scissors','paper'], ['paper','rock']
	
		playerscore += 1
		puts "You win!"
		
	when ['scissors','rock'], ['paper','scissors'], ['rock','paper']
	
		compscore += 1
		puts "You lose!"
		
	end
	
	round_count += 1
	puts

end
