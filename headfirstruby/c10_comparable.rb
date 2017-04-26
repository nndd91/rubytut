module Comparable
  def <(other)
    (self <=> other) == -1
  end
  def >(other)
    (self <=> other) == 1
  end
  def ==(other)
    (self <=> other) == 0
  end
  def <=(other)
    comparison = (self <=> other)
    comparison == -1 || comparison == 0
  end
  def >=(other)
    comparison = (self <=> other)
    comparison == 1 || comparison == 0
  end
  def between?(first, second)
    (self <=> first) >= 0 && (self <=> second) <= 0
  end

  #<=> spaceship operator. Combination of <, ==, > operators. Return -1 if left is less. 0 if equal, 1 if left is more.
end
