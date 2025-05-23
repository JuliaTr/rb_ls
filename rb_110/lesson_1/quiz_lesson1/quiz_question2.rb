=begin
Question 2:
Given an array of strings representing integers, iterate 
through all of the items in the array. If the integer value of 
the string is odd add it to a new array of odd integer strings. 
Once iteration is complete the new array should contain all of 
the odd integer strings from the original array.
=end

# Expected: ["3", "5", "7", "11", "13", "15"]

# Solutions that solve the problem:
# Solution 1 could be if we fix `break` condition
# `odd_numners << numbers[number] if number.to_i.odd?` to
# `odd_numbers << numbers[number] if number[number].to_i.odd?`:
numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []
number = 0

until number == numbers.size
  odd_numbers << numbers[number] if numbers[number].to_i.odd?

  number += 1
end

p odd_numbers # ["3", "5", "7", "11", "13", "15"]


# Solution 2:
numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []

for number in numbers
  if number.to_i.odd?
    odd_numbers.push(number)
  end
end

p odd_numbers  # ["3", "5", "7", "11", "13", "15"]


# Solution 3:
numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numners = []
counter = 0

loop do
  number = numbers[counter].to_i

  odd_numners << numbers[counter] unless number.even?

  counter += 1
  break if counter == numbers.size
end

p odd_numners   # ["3", "5", "7", "11", "13", "15"]


# Solution 4:
numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []

numbers.each do |number|
  odd_numbers << number if number.to_i.odd?
end

p odd_numbers   # ["3", "5", "7", "11", "13", "15"]