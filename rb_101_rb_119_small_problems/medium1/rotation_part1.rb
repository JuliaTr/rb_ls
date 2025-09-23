=begin
Write a method that rotates an array by moving the first 
element to the end of the array. The original array should 
not be modified.

Do not use the method `Array#rotate` or `Array#rotate!` for 
your implementation.
=end

def rotate_array(arr)
  new_arr = []
  counter = 0
  index_start = 1

  loop do
    current_element = arr[counter]

    if counter == 0
      new_arr << current_element
    elsif counter == 1
      new_arr.prepend(current_element)
    else
      new_arr.insert(index_start, current_element)
      index_start += 1
    end

    counter += 1
    break if counter >= arr.size
  end

  new_arr
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
# All test cases return `true`.

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true



## Possible solution
def rotate_array(array)
  array[1..-1] + [array[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
# All test cases return `true`.

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
