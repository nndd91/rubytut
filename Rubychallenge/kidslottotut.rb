kidslist = gets.chomp.split(';').shuffle
numofkids = gets.chomp.to_i

for i in 0..(numofkids-1)
kidslist[kidslist.length] = kidslist[i]
end

kidslist.each_cons(numofkids+1) do |kidsgroup|
  p kidsgroup
  print "#{kidsgroup[0]} > "
  for i in 1..(numofkids-1)
    print "#{kidsgroup[i]}, "
  end
  puts "#{kidsgroup[numofkids]}"
end


