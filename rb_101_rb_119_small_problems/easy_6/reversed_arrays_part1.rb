=begin
Write a method that takes an Array as an argument, and 
reverses its elements in place; that is, mutate the Array 
passed into this method. The return value should be the same 
Array object.

You may not use `Array#reverse` or `Array#reverse!`.

Note: for the test case `list = ['abc']`, we want to reverse the 
elements in the array. The array only has one element, a 
String, but we're not reversing the String itself, so the 
reverse! method call should return `['abc']`.
=end

def reverse!(list)
  middle = (list.length / 2.0).round

  if middle == 0
    list
  else
    first_index = 0
    last_index = -1
    loop do
      list[first_index], list[last_index] = list[last_index], list[first_index]
      break if last_index == -middle
      first_index += 1
      last_index -= 1
    end
    list
  end
end

list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = [1, 2, 3, 4, 1]
result = reverse!(list)
p result == [1, 4, 3, 2, 1] # true
p list == [1, 4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true



## Experiments:
def reverse!(list)
  list[0], list[-1] = list[-1], list[-0]
  list
  list[1], list[-2] = list[-2], list[1]
  list
end

list = [1, 2, 3, 4]
result = reverse!(list)
p result #== [4, 3, 2, 1] # true
# p list == [4, 3, 2, 1] # true
# p list.object_id == result.object_id # true

list = [1, 2, 3, 4, 1]
result = reverse!(list)
p result #== [1, 4, 3, 2, 1] # true
# p list == [1, 4, 3, 2, 1] # true
# p list.object_id == result.object_id # true



## Possible solution:
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = [1, 2, 3, 4, 1]
result = reverse!(list)
p result == [1, 4, 3, 2, 1] # true
p list == [1, 4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
