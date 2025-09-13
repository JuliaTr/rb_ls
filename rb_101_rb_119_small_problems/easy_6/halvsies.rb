=begin
Write a method that takes an Array as an argument, and returns 
two Arrays (as a pair of nested Arrays) that contain the first 
half and second half of the original Array, respectively. If 
the original array contains an odd number of elements, the 
middle element should be placed in the first half Array.
=end

def halvsies(arr)
  new_arr = []
  index_to_divide = arr.length / 2

  if arr.count.odd?
    new_arr << arr[0..index_to_divide]
    new_arr << arr[index_to_divide + 1..-1]
  else
    new_arr << arr[0..index_to_divide - 1]
    new_arr << arr[index_to_divide..-1]
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
p halvsies([5]) == [[5], []] # true
p halvsies([]) == [[], []] # true



## Possible solution:
def halvsies(array)
  middle = (array.size / 2.0).ceil
  p middle

  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
p halvsies([5]) == [[5], []] # true
p halvsies([]) == [[], []] # true
