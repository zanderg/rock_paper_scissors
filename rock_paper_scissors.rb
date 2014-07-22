# Create a rock paper scissors program that meets the following reqs:"
# 1. Prompt the user for input (i.e. "R, P, or S")
# 2. Send back and display computer move (i.e., "computer played...")
# 3. Create code that runs your move against a random computer move and displays "win", "lose", or "tie" accordingly
# 4. You will need to make use of LOOPS, CONDITIONALS, VARIABLES, and EQUALITY OPERATORS
# 5. Once this code functions, impletement a COUNTER that keeps USER and COMPUTER scores and pulls a winner once a score of 3 is reached

puts "Welcome to Rock, Paper, Scissors! First to 3 wins." 
puts "What is your first move? Type R for Rock, P for Paper, or S for Scissors."

user_score = 0
comp_score = 0

until user_score == 3 || comp_score == 3

user_move = gets.chomp.capitalize

comp_move = ["R", "P", "S"]
x = comp_move.sample

if user_move == "R" && x == "R"
	puts "You: #{user_move}. Computer: #{x}. It is a draw."
	puts "Score: #{user_score}-#{comp_score}."
	puts "Your move."
elsif user_move == "R" && x == "P"
	puts "You: #{user_move}. Computer: #{x}. You lose!"
	comp_score += 1
	puts "Score: #{user_score}-#{comp_score}."
	puts "Your move."
elsif user_move == "R" && x == "S"
	puts "You: #{user_move}. Computer: #{x}. You win!"
	user_score += 1
	puts "Score: #{user_score}-#{comp_score}."
	puts "Your move."
end

if user_move == "S" && x == "S"
	puts "You: #{user_move}. Computer: #{x}. It is a draw."
	puts "Score: #{user_score}-#{comp_score}."
	puts "Your move."
elsif user_move == "S" && x == "R"
	puts "You: #{user_move}. Computer: #{x}. You lose!"
	comp_score += 1
	puts "Score: #{user_score}-#{comp_score}."
	puts "Your move."
elsif user_move == "S" && x == "P"
	puts "You: #{user_move}. Computer: #{x}. You win!"
	user_score += 1
	puts "Score: #{user_score}-#{comp_score}."
	puts "Your move."
end

if user_move == "P" && x == "P"
	puts "You: #{user_move}. Computer: #{x}. It is a draw."
	puts "Score: #{user_score}-#{comp_score}."
	puts "Your move."
elsif user_move == "P" && x == "S"
	puts "You: #{user_move}. Computer: #{x}. You lose!"
	comp_score += 1
	puts "Score: #{user_score}-#{comp_score}."
	puts "Your move."
elsif user_move == "P" && x == "R"
	puts "You: #{user_move}. Computer: #{x}. You win!"
	user_score += 1
	puts "Score: #{user_score}-#{comp_score}."
	puts "Your move."
end

end

if user_score == 3
	puts "You win! Final score: #{user_score}-#{comp_score}."
elsif comp_score == 3
	puts "You lose! Final score: #{user_score}-#{comp_score}."
end
