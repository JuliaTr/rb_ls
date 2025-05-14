# Question 1: What happens if we try to initialize a Hash that 
# contains duplicate keys?

hsh = { a: 100, b: 200, c: 300, a: 400 }
p hsh

=begin
Output:
warning: key :a is duplicated and overwritten on line 4
{:b=>200, :c=>300, :a=>400}

The value for the second occurrence of the duplicate key 
overrites the value of the first occurrence.
=end



# ---------------------------------------------------------

=begin
Question 2:
Given an array of strings representing integers, iterate 
through all of the items in the array. If the integer value of 
the string is odd add it to a new array of odd integer strings. 
Once iteration is complete the new array should contain all of 
the odd integer strings from the original array.
=end

# Solutions that solve the problem:
# Solution 1:
numbers = ['2', '3', '5', '7', '8', '11', '13', '15', '18']
odd_numbers = []
number = 0

until number == numbers.size
  odd_numbers << numbers[number] if number.to_i.odd?

  number += 1
end

p odd_numbers # ["3", "7", "11", "15"]
