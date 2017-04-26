def total(prices)
  amount = 0
  prices.each do |price|
    amount += price
  end
  amount
end

def refund(prices)
  amount = 0
  prices.each do |price| #block must always follow a method call, do refers to start of block
    amount -= price
  end
  amount
end

def show_discounts(prices)
  prices.each do |price|
    amount_off = price/3.0
    puts format("Your discount is: $%.2f", amount_off)
  end
end

prices = [3.99, 25.00, 8.99]

puts format("%.2f", total(prices))
puts format("%.2f", refund(prices))
show_discounts(prices)

def my_method(&my_block)
  puts "We're in the method, about to invoke your block!"
  my_block.call
  my_block.call #can call multiple times if you want
  puts "We are back in th emethod!"
end

my_method do #from do to end, it will be stored in the my_block parameter
  puts "We're in the block"
end

def give(&my_block)
  my_block.call("2 turtle dove", "1 patridge") #Pass the parameters to block
end

give do |present1, present2| #Indicate parameters to accept. If multiple, seperate with comma
  puts "My method gave to me.."
  puts present1, present2
end

def call_twice #Another way is using yield keyword
  puts 1
  yield
  yield
  puts 3
end

call_twice do #method call followed by do
  puts 2
end

call_twice { puts 2 } # another way instead of using do
