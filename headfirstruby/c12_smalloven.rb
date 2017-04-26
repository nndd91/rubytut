class OvenOffError < StandardError #Defining two new exception classes
end
class OvenEmptyError < StandardError
end

class SmallOven
  attr_accessor :contents

  def turn_on
    puts "Turning oven on."
    @state = "on"
  end

  def turn_off
    puts "Turning oven off."
    @state = "off"
  end

  def bake
    unless @state == "on"
      raise OvenOffError, "You need to turn the oven on first!" #Raise error if we attempt to bake when oven is on
    end
    if @contents == nil
      raise OvenEmptyError, "There's nothing in the oven!" #raise error if contents is nil
    end
    "golden-brown #{contents}"
  end
end

dinner = ['turkey', 'casserole', 'pie', nil ]
oven = SmallOven.new

dinner.each do |item|
  begin #rescue needs to be inside begin/end blocks
    oven.turn_on
    oven.contents = item
    puts "Serving #{oven.bake}"
  rescue => my_exception # Basic rescue all errors. Skips normal block is error is raised. Store exception in variable
    puts my_exception.message # Print the exception message indicated in raise
  ensure #For code that runs regardless if error is found
    oven.turn_off
  end
end

  begin
    oven.contents = 'apple'
    puts "Serving #{oven.bake}"
  rescue OvenEmptyError => my_exception # Store exception in variable
    puts "Error: #{my_exception.message}" # Print the exception message indicated in raise
  rescue OvenOffError => error #Rescue OvenOffError
    oven.turn_on
    retry # Retry the code after turning the oven on
  end

class MyError < StandardError #Making your own exception class
end

#raise MyError, "Opps!" # argument after raise is the exception class. eg ArgumentError, IndexError, RuntimeError
