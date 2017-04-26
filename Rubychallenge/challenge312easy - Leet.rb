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
    conversions = { "A" => "4", "B" => "6", "E" => "3", "I" => "1", "L"=> "1", "M" =>"(V)", "N" => "(\\)", "O"=> "0", "S"=> "5", "T" => "7", "V" => "\\/", "W" => "`//" }
    #p conversions
    conversions2 = conversions.invert
    #p conversions2

  if /[0-9`()\/]/.match(string)
    #convert from l33t
    #puts "Converting from l33t"
    (0..array.length).each do |i|
      if array[i] == "`" && array[i+1] == "/"
        array[i] = "W"
        array[i+1] = ""
        array[i+2] = ""
      elsif array[i] == "\\" && array[i+1] == "/"
        array[i] = "V"
        array[i+1] = ""
      elsif array[i] == "(" && array[i+1] == "V"
        array[i] = "M"
        array[i+1] = ""
        array[i+2] = ""
      elsif array[i] == "(" && array[i+1] == "\\"
        array[i] = "N"
        array[i+1] = ""
        array[i+2] = ""
      else
        if conversions2.has_key?(array[i])
          array[i] = conversions2[array[i]]
        end
      end

    end
    puts array.join

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

l33t_this("I am elite.")
l33t_this("Da pain!")
l33t_this("Eye need help!")
l33t_this("3Y3 (\\)33d j00 t0 g37 d4 d0c70r.")
l33t_this("1 n33d m4 p1llz!")



=begin
$leet_dictionary = {
    'A' => '4',
    'B' => '6',
    'E' => '3',
    'L' => '1',
    'I' => '|',
    'M' => '(V)',
    'N' => '(\)',
    'O' => '0',
    'S' => '5',
    'T' => '7',
    'V' => '\/',
    'W' => '`//'
}

def muggle_to_leet(word)
  $leet_dictionary.keys.each { |key| word.gsub!(key, $leet_dictionary[key]) }
  word
end

def leet_to_muggle(word)
  $leet_dictionary.values.each { |value| word.gsub!(value, $leet_dictionary.key(value)) }
  word
end

def ez_leet(word)
  word.upcase!
  $leet_dictionary.values.each { |value| return leet_to_muggle(word) if word.include?(value.to_s) }
  muggle_to_leet(word)
end
=end
