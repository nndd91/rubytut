# Get my number game

puts "Welcome to my number game!"
print "What is your name?"

input = gets
name = input.chomp


puts "Hello there #{name}"

puts "There is a number between 1 to 100, can you guess which one?"

target = rand(10)

puts target

player_num = gets.to_i

while player_num != target
	puts "Try again!"
	player_num = gets.to_i
	
end

puts "Well done!"

puts " Would you like to play again?"

choice = gets

