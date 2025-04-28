=begin
Exercise (basic)​: Write a method that takes an array of integers 
and returns a new array containing only the even numbers from 
the original array using the `loop` method.

select_even([1, 2, 3, 4, 5, 6])  # => [2, 4, 6]


Output: return new array

Rules:
  Explicit:
    - new array should contain only even numbers

Example: [2, 4, 6] 

=end

def select_even(arr)
  new_arr = []
  counter = 0

  loop do
    if arr[counter].even?
      new_arr << arr[counter]
    end

    counter += 1
    break if counter >= arr.size
  end

  new_arr
end

p select_even([1, 2, 3, 4, 5, 6]) == [2, 4, 6]  # true
