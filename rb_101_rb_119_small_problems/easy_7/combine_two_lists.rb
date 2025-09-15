=begin
Write a method that combines two Arrays passed in as 
arguments, and returns a new Array that contains all 
elements from both Array arguments, with the elements 
taken in alternation.

You may assume that both input Arrays are non-empty, and 
that they have the same number of elements.
=end

def interleave(arr1, arr2)
  counter_arr1 = 0
  pairs = arr2.map do |char2|
    pair = [arr1[counter_arr1]] + [char2]
    counter_arr1 += 1
    pair
  end

  pairs.flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
# Test case returns `true`.



# ## Experiments:
# p 'a'.to_i


def interleave(arr1, arr2)
  arr2.map do |char2|
    arr_from_arr1 = arr1.map { |char| char }
    [arr_from_arr1] + [char2]
  end
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
# [[[1, 2, 3], "a"], [[1, 2, 3], "b"], [[1, 2, 3], "c"]]



## Possible solution:
def interleave(array1, array2)
  result = []

  array1.each_with_index do |element, index|
    result << element << array2[index]
  end

  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
# Test case returns `true`.



## Further exploration:
# See if you can rewrite interleave to use `Array#zip`.
def interleave(array1, array2)
  array1.zip(array2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
# Test case returns `true`.
