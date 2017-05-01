my_file = File.new("simple_file.txt", "w+")

File.open("simple_file.txt", "w") { |file|
  file.write("First line of file\n")
}


file = File.read("simple_file.txt")
p file

sample = File.open("simple_file.txt", "a+")
sample.puts("Hello there\n")
sample << "Using the double arrow <<\n"
sample.write("Using the write command\n")
sample.close
#r : read, w: write, w+: read and write(overwrite if file exist), a+:w+, but if file exist, append
#File.read("simple_file.txt")
#File.readlines("simple_file.txt")

File.readlines("simple_file.txt").each do |line|
  puts line
end

File.new("dummy.txt", "w")
File.delete("dummy.txt")


#pathname function
require 'pathname'

f = File.new("simple_file.txt", "r")
pn = Pathname.new(f)
pn.extname #Calling method on the file variable
File.extname("simple_file.txt") #

#looking at current directory and reporting all files with .txt
d = Dir.new(".")
puts "Using DIR"
while file = d.read do
  puts "#{file} has extension .txt" if File.extname(file) == ".txt"
end

puts "Using pathname"
pn = Pathname.new(".")
pn.entries.each { |f| puts "#{f} has extension .txt" if f.extname == ".txt" }


