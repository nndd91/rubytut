class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, age:, occupation:, hobby: nil, birthplace: "Sleepy Creek")
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end
end

candidate = Candidate.new("Amy Nguyen", age: 23, occupation: "Lawyer") #if hash uses symbol as keys, can leave the colon off the symbol and replace => with colon {name: "Kim"}

p candidate

=begin
class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, option = {}) #option is a hash parameter
    self.name = name
    self.age = options[:age]                  #Accessing values from has
    self.occupation = options[:occupation]
    self.hobby = options[:hobby]
    self.birthplace = options[:birthplace]
  end
end

p Candidate.new("Amy Nguyen", occupaiton: "Engineer") #Spelling error in leads to ruby using default nil value for occupation without error raised!
=end
