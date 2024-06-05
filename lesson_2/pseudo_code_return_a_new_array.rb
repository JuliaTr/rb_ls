### A method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element. 

# Informal pseudo-code
=begin
Given a collection of integers.

Within the method iterate through the collection one by one:
  - save the first value as the starting value
  - for each iteration, compare the saved value with the current value
  - if the saved value is other
    - reassign the saved value as the current value
  - othervise, if the current value is not the other
    - move to the next value in the collection

After iterating through the collection, return the saved value. 
=end



# Formal pseudo-code
=begin
START

# Given an array of integers called "array_of_integers"

SET iterator = 0
SET saved_value = value withing integers collection at space 0

WHILE iterator <= length of numbers
  SET current_number = value within numbers of array at space "iterator"
  IF saved_number == current_number
    go to the next iteration
  ELSE
    saved_number = current_number

  iterator = iterator + 1

PRINT saved_number

END
=end
