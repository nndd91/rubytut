=begin
Link to Post:
https://www.reddit.com/r/dailyprogrammer/comments/pjbj8/easy_challenge_2/

Problem:
Hello, coders! An important part of programming is being able to apply your programs, so your challenge for today is to create a calculator application that has use in your life. It might be an interest calculator, or it might be something that you can use in the classroom. For example, if you were in physics class, you might want to make a F = M * A calc.
EXTRA CREDIT: make the calculator have multiple functions! Not only should it be able to calculate F = M * A, but also A = F/M, and M = F/A!

=end

#Solution Start
def moreinfo (var1, var2, var3)
  print "Input value of #{var1}: "
  var1in = gets.to_f
  print "Input value of #{var2}: "
  var2in = gets.to_f

  case var3
    when "Force"
      result = var1in * var2in
      suffix = "N"
    when "Mass"
      result = var1in / var2in
      suffix = "KG"
    when "Acceleration"
      result = var1in / var2in
      suffix = "M/S"
  end
  puts "The #{var3} is #{result} #{suffix}."
end

def menu

  puts "Hello there, what would you like to do today?"
  puts "1. Calculate Force\n2. Calculate Mass\n3. Calculate Acceleration"
  n = gets.to_i
  STDOUT.flush
  case n
    when 1
      puts "Case 1"
      moreinfo("Mass", "Acceleration", "Force")
    when 2
      puts "Case 2"
      moreinfo("Force", "Acceleration", "Mass")
    when 3
      puts "Case 3"
      moreinfo("Force", "Mass", "Acceleration")
  end

  puts "Would you like to calculate again?"
  input = gets.to_s.upcase.chomp

  case input
  when "YES"
    menu
  when "NO"
    puts "Thank you for using me"
  end

end

menu
