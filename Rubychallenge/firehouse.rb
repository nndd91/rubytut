class House

  def layout=(value)
    @layout = value
  end

  def layout
    @layout
  end

  def print_layout
    for i in 0..(@layout.length-1)
      for j in 0..(@layout[i].length-1)
        print @layout[i][j]
      end
      print "\n"
    end
  end

  def smoke(x, y)
    x = x.to_i
    y = y.to_i

    curr_sit = @layout[x][y].chomp
    p curr_sit
    puts "Current location: < #{curr_sit} >"

    case curr_sit
    when "S"
      @layout[x][y] = "F"
      print_layout
      input_smoke
    when " "
      @layout[x][y] = "S"
      print_layout
      input_smoke
    when "F"
      puts "Nothing Happens"
      print_layout
      input_smoke
    else
      puts "Invalid Move!"
      print_layout
      input_smoke
    end

    @layout[x][y] = "F"
    puts "Current location: #{@layout[x][y]}"
  end

  def input_smoke
    x = gets.chomp
    y = gets.chomp

    puts "You chose (#{x},#{y})"

    smoke(x, y)


  end


end

#initializing

firehouse = House.new
firehouse.layout= ["#############/#".chars,
              "#     |       #".chars,
              "#     #       #".chars,
              "#     #       #".chars,
              "#######       #".chars,
              "#     _       #".chars,
              "###############".chars]

#begin game
firehouse.input_smoke



