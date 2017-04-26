module Enumerable #can be mixed into any class that have a "each" method

  def find_all
    matching_items = []
    self.each do |item|
      if yield(item)  #pass item to block. if result is true..
        matching_items << item
      end
    end
    matching_items
  end

  def reject
    kept_items = [] #new array to hold items
    self.each do |item|
      unless yield(item) #pass item to block. if result is false..
        kept_items << item
      end
    end
    kept_items
  end

  def map
    results = []
    self.each do |item|
      results << yield(item) #pass element to block and add return value to new array
    end
    results
  end

  #many more methods)

end
