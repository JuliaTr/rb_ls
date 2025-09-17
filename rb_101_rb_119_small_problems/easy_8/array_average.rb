=begin
Write a method that takes one argument, an array containing 
integers, and returns the average of all numbers in the array. 
The array will never be empty and the numbers will always be 
positive integers. Your result should also be an integer.

Don't use the Array#sum method for your solution - see if 
you can solve this problem using iteration more directly.
=end

def average(arr)
  sum_total = 0

  arr.each do |number|
    sum_total += number
  end

  sum_total / arr.length
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
# All test cases return `true`.



# Possible solution:
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
# All test cases return `true`.



## Experiments:
def average(numbers)
  numbers.reduce(:+) / numbers.count
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
# All test cases return `true`.



## Further exploration:
def average_to_float(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  (sum.to_f / numbers.count).to_f.round(2)
end

puts average_to_float([1, 6])                   # 3.5
puts average_to_float([1, 5, 87, 45, 8, 8])     # 25.67
puts average_to_float([9, 47, 23, 95, 16, 52])  # 40.33
