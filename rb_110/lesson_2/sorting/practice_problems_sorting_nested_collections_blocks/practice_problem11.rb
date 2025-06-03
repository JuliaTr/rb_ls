=begin
Practice Problem 11
Given the following data structure use a combination of 
methods, including either the `select` or `reject` method, 
to return a new array identical in structure to the 
original but containing only the integers that are 
multiples of 3.
=end

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

result = arr.map do |sub_array|
  sub_array.select do |number|
    number % 3 == 0
  end
end

p result  # [[], [3, 12], [9], [15]]
 


## Alternative solution:
result = arr.map do |element|
  element.reject do |num|
    num % 3 != 0
  end
end

p result  # [[], [3, 12], [9], [15]]
