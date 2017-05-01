#Given an integer, write a function to determine if it is a power of two.

def is_power_of_two(n)
  while n > 1 && n%2==0
      n /= 2
      #puts n
  end
  #print n
  return n==1
end

input = "12 22 8 4 30 2 4 8 16 32 64"
array = input.split(" ")
p array
array.each do |a|
  print "For the number ", a, "\n"
  puts is_power_of_two(a.to_i)
end

=begin
def is_power_of_two(n)
  while n > 1
    if n%2 == 0
      n /= 2
      #puts n
    else
      return false
    end
  end
  #print n
  if n == 1
    return true
  else
    return false
  end
end
=end
