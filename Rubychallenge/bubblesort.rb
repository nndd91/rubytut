array = [3, 4, 10, 1, 2, 32, 5, 1]
p array

n = 0

while (n != (array.length-1))
  n=0
  for i in (0..(array.length-2))
    if array[i].to_i< array[i+1].to_i
      temp = array[i]
      array[i] = array[i+1]
      array[i+1] = temp
    else
      n += 1
    end
  end
end

p array
