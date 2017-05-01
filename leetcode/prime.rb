#generate prime numbers

@prime = []

def is_prime(n)
  for i in (2..(n-1))
    if n%i==0
      print n, " is not Prime!\n"
      return false
    end
  end
  @prime << n
  print n, " is prime\n"
  true
end


for i in (6..100)
  is_prime(i)
end

p @prime

