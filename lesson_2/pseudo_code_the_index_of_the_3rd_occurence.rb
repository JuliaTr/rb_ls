### a method that determines the index of the 3rd occurrence of a given character in a string.

=begin
Given a string.

Convert the string into an array of the collection of characters.

Iterate through the collection one by one:
  - save the first index as the starting value
  - for each iteration, compare the saved index with the current index
  - if the saved value is not the 3rd index
    - move to the next value in the collecion
  - otherwise, if the index of the current value is the 3rd
    - reassign the saved value as the current value

After iterating through the collection, return the saved value.
=end
