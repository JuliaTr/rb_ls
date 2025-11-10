=begin
Write a method that takes two sorted Arrays as arguments, and 
returns a new Array that contains all elements from both 
arguments in sorted order.

You may not provide any solution that requires you to sort the 
result array. You must build the result array one element at a 
time in the proper order.

Your solution should not mutate the input arrays.
=end

## Refactored:
def merge(arr1, arr2)
  cloned_arr1 = arr1.clone
  cloned_arr2 = arr2.clone

  return cloned_arr2 if arr1.empty?
  return cloned_arr1 if arr2.empty?

  result = []

  while cloned_arr1.any? || cloned_arr2.any?
    if cloned_arr2.none? || cloned_arr1.first <= cloned_arr2.first
      result << cloned_arr1.first
      cloned_arr1.shift
    else
      result << cloned_arr2.first
      cloned_arr2.shift
    end
  end

  result
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
# All test cases return `true`.



## Solution:
def merge(arr1, arr2)
  cloned_arr1 = arr1.clone
  cloned_arr2 = arr2.clone

  return cloned_arr2 if arr1.empty?
  return cloned_arr1 if arr2.empty?

  new_arr = []

  loop do
    minimum1 = cloned_arr1.min if !cloned_arr1.empty?
    minimum2 = cloned_arr2.min if !cloned_arr2.empty?

    if minimum2.nil? || minimum1 < minimum2
      new_arr << minimum1
      cloned_arr1.shift
    else 
      new_arr << minimum2
      cloned_arr2.shift
    end

    break if cloned_arr1.empty? && cloned_arr2.empty?
  end

  new_arr
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
# All test cases return `true`.



## Possible solution:
def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
