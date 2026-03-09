=begin
Write a method that combines two Arrays passed in as arguments, 
and returns a new Array that contains all elements from both 
Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that 
they have the same number of elements.

Ideas for intermediate data structures / types:
sort, add one by one to new arr, loop

=end

## Solution:
def interleave(arr1, arr2)
  result = []
  counter = 0

  for element in arr1
    result << element
    result << arr2[counter]
    counter += 1
  end

  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
# true



## Possible solution:
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
# true
