=begin

A -> 4
B -> 6
E -> 3
I -> 1
L -> 1
M -> (V)
N -> (\)
O -> 0
S -> 5
T -> 7
V -> \/
W -> `//

=end



def l33t_this(string)
    array = string.upcase.chars
    #p array
    conversions = { "A" => "4", "B" => "6", "E" => "3", "I" => "1", "L"=> "1", "M" =>"(V)", "N" => "(\)", "O"=> "0", "S"=> "5", "T" => "7", "V" => "\\/", "W" => "`//" }
    #p conversions
    conversions2 = conversions.invert
    p conversions2

  if /[0-9`()\/]/.match(string)
    #convert from l33t
    puts "Converting from l33t"
    (0..array.length).each do |i|
      temp = array[i]
      if array[i] == "`" && array[i+1] == "/"
        array[i] = "W"
        array[i+1] = ""
        array[i+2] = ""
        puts "Changing #{temp} to #{array[i]}"
      elsif array[i] == "\\" && array[i+1] == "/"
        array[i] = "V"
        array[i+1] = ""
        puts "Changing #{temp} to #{array[i]}"
      elsif array[i] == "(" && array[i+1] == "V"
        array[i] = "M"
        array[i+1] = ""
        array[i+2] = ""
      elsif array[i] == "(" && array[i+1] == "\\"
        array[i] = "N"
        array[i+1] = ""
      else
        if conversions2.has_key?(array[i])
          array[i] = conversions2[array[i]]
        end
      end

    end
    p array.join

  else
    #convert to L33t
    #puts "Converting to l33t"
    (0..array.length).each do |i|
      #p i
      if conversions.has_key?(array[i])
        array[i] = conversions[array[i]]
        #print "Changing #{array[i]} to #{conversions[array[i]]}"
      end
    end
    puts array.join
  end
end

l33t_this("elite")
l33t_this("alpha")
l33t_this("wow")
l33t_this("41PH4")
l33t_this("`//0`//")





