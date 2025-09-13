=begin
Write a method named include? that takes an Array and a 
search value as arguments. This method should return `true` 
if the search value is in the array, `false` if it is not. 
You may not use the `Array#include?` method in your solution.
=end

def include?(arr, arg_2)
  arr.any? { |element| element == arg_2 }
end

p include?([1,2,3,4,5], 3) == true    # true
p include?([1,2,3,4,5], 6) == false   # true
p include?([], 3) == false            # true
p include?([nil], nil) == true        # true
p include?([], nil) == false          # true



## Possible solution:
# Option 1:
def include?(array, value)
  !!array.find_index(value)
end

p include?([1,2,3,4,5], 3) == true    # true
p include?([1,2,3,4,5], 6) == false   # true
p include?([], 3) == false            # true
p include?([nil], nil) == true        # true
p include?([], nil) == false          # true


# Option 2:
def include?(array, value)
  array.each { |element| return true if value == element }
  false
end

p include?([1,2,3,4,5], 3) == true    # true
p include?([1,2,3,4,5], 6) == false   # true
p include?([], 3) == false            # true
p include?([nil], nil) == true        # true
p include?([], nil) == false          # true
