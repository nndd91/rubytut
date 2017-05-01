# @param {Integer} num
# @return {Boolean}
def is_ugly(num)
  if num < 0
    num = -num
    p num
  end
  # num
  #@primes =[]

  def is_prime(n)
    for i in (2..(n-1))
      if n%i==0
        #print n, " is not Prime!\n"
        return false
      end
    end
    #@primes << n
    #print n, " is prime\n"
    true
  end

  for i in (6..num)
    if is_prime(i)
      return false if num%i == 0
    end
  end
=begin
  @primes.each do |prime|
    if num%prime == 0
      return false
    end
  end
=end

  return true
end

input = "12 22 8 4 30 2 4 8 16 32 64 1 2 3 4 5 6 7 8 -21 -2147483648"
nums = input.split(" ")
p nums
nums.each do |num|
  print "The number ", num, " is ugly: ", "\n"
  puts is_ugly(num.to_i)
end
