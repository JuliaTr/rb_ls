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
