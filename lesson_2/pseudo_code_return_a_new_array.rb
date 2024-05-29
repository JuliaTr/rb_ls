### a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element. 

=begin
Given a collection of integers.

Iterate through the collection one by one:
  - save the first value as the starting value
  - for each each iteration, compare the saved value with the current value
  - if the saved value is other
    - reassign the saved the value as the current value
  - othervise, if the current value is not the other
    - move to the next value in the collection

After iterating hrough the collection, return the saved value.
=end
