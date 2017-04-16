=begin
Anna is a teacher, kids can sit where they want in her classroom every morning. She noticed that they always sit next to their closest firends but she would like to introduce mixity.
Her idea is to create a "lotto" game when she take the morning attendance. Every kid will have a paper with a limited number of names of its classmate. Each kid will claim their name in the sitting order. Every time a kid claim its name, all kids who have its name in their list can check it. The first kid who finish his list is the morning winner.
Challenge details

You have to create a program to help Anna as she often have a different class configuration.
Input

Your program will input 3 elements:
A list of kids in class (separated by ";")
The number of kids names she want on each output list
Output

Your program should output the loto name list to give to kids in the morning.
Each list sould precise which kid to give the list
Each kid must have a unique list
Lists have to be randomised (not in alphabetic order)
=end


#Input
#kidslist = "Rebbeca Gann;Latosha Caraveo;Jim Bench;Carmelina Biles;Oda Wilhite;Arletha Eason".chomp.split(';').shuffle
#numofkids = 3

kidslist = gets.chomp.split(';').shuffle
numofkids = gets.chomp.to_i

for i in 0..(numofkids-1)
  kidslist[kidslist.length] = kidslist[i]
end

kidslist.each_cons(numofkids+1) do |kidsgroup|
  restofkids = (kidsgroup.reject { |kid| kid == kidsgroup[0] }).shuffle
  puts "#{kidsgroup[0]} > #{restofkids[0]}, #{restofkids[1]}, #{restofkids[2]}"

end

=begin
#Input
Rebbeca Gann;Latosha Caraveo;Jim Bench;Carmelina Biles;Oda Wilhite;Arletha Eason
3
#Output
Arletha Eason > Oda Wilhite, Rebbeca Gann, Carmelina Biles
Carmelina Biles > Oda Wilhite, Latosha Caraveo, Rebbeca Gann
Oda Wilhite > Jim Bench, Rebbeca Gann, Latosha Caraveo
Rebbeca Gann > Jim Bench, Latosha Caraveo, Arletha Eason
Latosha Caraveo > Carmelina Biles, Arletha Eason, Jim Bench
Jim Bench > Oda Wilhite, Arletha Eason, Carmelina Biles
=end
