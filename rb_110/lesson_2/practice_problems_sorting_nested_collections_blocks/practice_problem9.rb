=begin
Practice Problem 9
Given this data structure, return a new array of the same 
structure but with the sub arrays being ordered (alphabetically 
or numerically as appropriate) in descending order.
=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

result = arr.map do |sub_array|
  sub_array.sort do |a, b|
    b <=> a
  end
end

p result   
# [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]
