=begin
Write a method that takes an Array of integers as input, 
multiplies all the numbers together, divides the result by the 
number of entries in the Array, and then prints the result 
rounded to 3 decimal places. Assume the array is non-empty.

You may need to use `Kernel#format`.



- multiplies all the numbers together
- divides the result by the number of entries in the Array
- prints the result rounded to 3 decimal places

=end

## Solution
def show_multiplicative_average(arr)
  multiplied = arr.inject(:*)
  divided = multiplied.to_f / arr.size
  puts "The result is #{format('%.3f', divided)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667




## Possible solution
def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts "The result is #{format('%.3f', average)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
