### A method that takes two arrays of numbers and returns the result of merging the arrays.

# Informal pseudo-code
=begin
Given two collections of integers.

Within the method iterate through the first collection one by one:
  - save the first value as the starting value;
  - for each iteration, add each element of the second array to the next element to the first array.

After iterating through the collection, return the result of merging the arrays.
=end



# Formal pseudo-code
=begin
START

# Given two collections of integers called "array1" and "array2"

SET iterator = 0
SET saved_number = value within numbers collection at space 0

WHILE iterator <= length of numbers
  SET current_number = value within numbers collection at space "iterator"
  IF current_number of array2
    result = save the current_number array2 next to the current_number of array1
  ELSE
    go to the next iteration
  
  iterator = iterator + 1

PRINT result

END
=end

