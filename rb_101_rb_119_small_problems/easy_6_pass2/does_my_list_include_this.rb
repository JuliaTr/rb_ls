=begin
Write a method named `include?` that takes an Array and a search 
value as arguments. This method should return true if the search 
value is in the array, `false` if it is not. You may not use the 
`Array#include?` method in your solution.
=end

## Solution
def include?(arr, search_element)
  arr.each { |value| return true if value == search_element }
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
# All test cases return `true`.



## Possible solution
def include?(array, value)
  !!array.find_index(value) 
end

=begin
Find index of `value`. If it's there, the `find_index` return 
value will be an integer. Then we convert it to a boolean. 
`!` converts with opposite truthiness. To convert to truthiness
of the return value of `find_index`, we use another `!`
=end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
