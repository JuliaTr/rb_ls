### A method that takes an array of strings, and returns a string that is all those strings concatenated together.

# Informal pseudo-code
=begin
Given an array of strings.

Within the method iterate through the array of strings one by one:
  - save the first value as the starting value;
  - for each iteration, add the next value to the current value;
  - reassign the saved value as the current value.

After iterating through the collection, return the saved value.
=end



# Formal pseudo-code
=begin
START

# Given an array of strings called "array_of_strings"

SET iterator = 0
SET saved_string = value within srings collection at space 0

WHILE iterator <= length of number
  SET current_string = value within numbers collection at space "iterator"
  iterator = iterator + 1
  saved_string = current_string

PRINT saved_string

END
=end
