class CelestialBody
  attr_accessor :type, :name
end

#passing a block to Hash.new to be used as the hash default block. Can include argument as default. Hash.new(0) means default value of 0 if unassigned
#when key is accessed without value,
#1. block is called,
#2. block receives reference to hash and current key as block parameters, These can be used to assign value to the hash
#3. return value is returned as the current value of the has key
bodies = Hash.new do |hash, key| #receives a reference to the hash and the current key
  body = CelestialBody.new #create new object just for the current key
  body.type = "planet"
  hash[key] = body #assigns the hash and returns the new value. Return value will be the assigned value which is body.
end

#In ruby, value of assignment expression is the value being assigned. p my_hash = {} will return {}
#Hence

bodies['Mars'].name = 'Mars'
bodies['Europa'].name = 'Europa'
bodies['Europe'].type = 'moon'
bodies['Venus'].name = 'Venus'

p bodies

#Hash default rule #1: Dont modify the default object
#numbers makes good default object as they are immutable. any math operation done on a ruby obejct returns an entirely new object.

letters = ['a', 'b', 'c', 'a', 'c', 'a']
counts = Hash.new(0) #default object is 0.

letters.each do |letter|
  counts[letter] += 1
end

#Hash default rule #2: Assign values to the hash
#if we are going to use hash default object, make sure we are actually assigning values to the hash

default_body = CelestialBody.new
default_body_type = 'planet'
bodies = Hash.new(default_body)

bodies['Mars'].name = 'Mars' #A call to attribute writer method. This does not assign to the hash!

p bodies #=> {} The hash is still empty!

#Rule of thumb
#1. If default is a number, you can use hash default object
#2. If it is anything else, you should use hash default_block.

#Warning
class LoveInterest
  def request_date
    if @busy
      puts "Sorry, Im busy."
    else
      puts "Sure, lets go!"
      @busy = true
    end
  end
end

betty = LoveInterest.new #betty is a reference to the new LoveInterest object
candace = betty #Aliasing, candace is reference to betty instead of a new object

p betty.object_id
p candace.object_id
