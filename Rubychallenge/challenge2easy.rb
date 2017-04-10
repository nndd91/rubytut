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
