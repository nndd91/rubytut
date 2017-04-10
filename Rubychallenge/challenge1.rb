# create a program that will ask the users name, age, and reddit username. have it tell them the information back, in the format:
# your name is (blank), you are (blank) years old, and your username is (blank)
# for extra credit, have the program log this information in a file to be accessed later.

puts "Hello there reddit user, what is your name?"

name = gets.chomp

puts "Hello #{name}, how old are you?"

age = gets.chomp

puts "and what is your reddit username?"

reduser = gets.chomp

puts " Your name is #{name}, you are #{age}, and your username is #{reduser}"

puts "Would you like to try again?"

input = gets
