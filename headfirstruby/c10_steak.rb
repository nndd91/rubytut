class Steak

  include Comparable #allows all methods of comparable to be used after replace <=>

  attr_accessor :grade

  GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" => 1 } #first letter capital will be constant, but ruby convention says all capitalized.

=begin  #using >(other)
  def >(other) #Since first_steak > second_steak is equals to first_steak.>second_steak
    #grade_scores = {"Prime" => 3, "Choice" => 2, "Select" => 1 } #if declared here, hash creates everytime there is a comparison
    GRADE_SCORES[grade] > GRADE_SCORES[other.grade]
  end
=end

  def <=>(other) #Replacing spaceship operator is more efficient
    if GRADE_SCORES[self.grade] < GRADE_SCORES[other.grade]
      return -1
    elsif GRADE_SCORES[self.grade] == GRADE_SCORES[other.grade]
      return 0
    else
      return 1
    end
  end

end

first_steak = Steak.new
first_steak.grade = "Prime"
second_steak = Steak.new
second_steak.grade = "Choice"

if first_steak > second_steak
  puts "I'll take #{first_steak.inspect}."
end
