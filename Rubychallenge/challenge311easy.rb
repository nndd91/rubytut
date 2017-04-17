=begin
A sequence of n > 0 integers is called a jolly jumper if the absolute values of
the differences between successive elements take on all possible values through
n - 1 (which may include negative numbers). For instance,

1 4 2 3

is a jolly jumper, because the absolute differences are 3, 2, and 1, respectively.
The definition implies that any sequence of a single integer is a jolly jumper.
Write a program to determine whether each of a number of sequences is a jolly jumper.

Input Description

You'll be given a row of numbers. The first number tells you the number of integers to calculate over, N, followed by N integers to calculate the differences. Example:

4 1 4 2 3
8 1 6 -1 8 9 5 2 7

Output Description

Your program should emit some indication if the sequence is a jolly jumper or not. Example:

4 1 4 2 3 JOLLY
8 1 6 -1 8 9 5 2 7 NOT JOLLY

1) find the smallest number
2) find the largest number
3) largest - smallest = numofelements-1
=end

input = gets
array = input.chomp.split(' ')

num_of_elements = array.shift.to_i

jump = (0..(num_of_elements-2)).each.map {|i| (array[i].to_i-array[i+1].to_i).abs}.sort {|x,y| y <=> x}

jolly = (jump[0] == num_of_elements-1)

diff = (0..(num_of_elements-2)).each.map {|i| (jump[i].to_i-jump[i+1].to_i).abs}

if (jolly == true) && (diff.all? { |i| i == 1})
  print input.chomp + " JOLLY\n"
else
  print input.chomp + " NOT JOLLY\n"
end



=begin
#input = gets
input = "4 2 -1 0 2"
array = input.chomp.split(' ')

num_of_elements = array.shift.to_i
p num_of_elements
jolly = false
(0..(num_of_elements-2)).each do |i|
  if (array[i].to_i - array[i+1].to_i).abs == (num_of_elements-1).abs
    jolly = true
    num_of_elements -= 1
    p jolly
    p num_of_elements
  else
    p jolly
    jolly = false
    break
  end
end

if jolly == true
  print input.chomp + " JOLLY\n"
else
  print input.chomp + " NOT JOLLY\n"
end
=end

=begin
input = gets
#input = "4 19 22 24 25"
array = input.chomp.split(' ')

num_of_elements = array.shift.to_i

p num_elements
array = array.sort

b = (array[num_of_elements-1].to_i - array[0].to_i)

if ( b == (num_of_elements-1))
  print input.chomp + " JOLLY\n"
else
  print input.chomp + " NOT JOLLY\n"
end

=end
