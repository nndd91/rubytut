=begin
Description

Simplify square roots in the form (a sqrt(b))/(c sqrt(d)).
A simplified radical should have no square roots in the denominator and no
number in a square root should have a square factor.
For example, the input 2 5 5 10 for a b c d, respectively, should simplify to
1 2 5 where a=1, b=2, and c=5.
Output description

 a b c

(d should not exist after simplifying)
Challenge input

45 1465 26 15

Challenge output

15 879 26
=end

#sqrt_in = gets.chomp.split(' ')
sqrt_in = "1 8".chomp.split(' ')
a = sqrt_in[0].to_f
b = sqrt_in[1].to_f

p sqrt_in

def simplify_sqrt(a, b)
  #simplify sqrt b
  num = Math.sqrt(b).to_i
  p num
  b = Math.sqrt(b) - num
  p b
end

simplify_sqrt(a, b)



=begin
def simplify_sqrt(outside, inside)
  (2..inside ** 0.5).select { |n| inside % (n ** 2) == 0 }.each do |i|
    inside /= i ** 2
    outside *= i
  end
  [outside, inside]
end

def simplify_fraction(num, den)
  g = num.gcd den
  [num / g, den / g]
end

a, b, c, d = ARGV.map { |s| s.to_i }

b *= d
c *= d

a, b = simplify_sqrt a, b
a, c = simplify_fraction a, c

puts a, b, c
=end
