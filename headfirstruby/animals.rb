

class Animals

  attr_reader :name, :age

  def name=(value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age=(value)
    if value < 0
      raise "An age of #{value} isnt valid!"
    end
    @age = value
  end

  def move(destination)
    puts "#{name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{age} years old."
  end

end

class Dog < Animals

  def talk
    puts "#{@name} says Bark!"
  end

  def poop
    puts "#{@name} lets out a big poop"
  end

  def move(destination)
    super #Inherite all codes of move, continue writing additional code below.
    puts "Stops for a moment and peed"
  end

end

dog = Dog.new
dog.name = "Daisy"
dog.age = 3
dog.report_age
dog.talk
dog.move("bed")
dog.poop
