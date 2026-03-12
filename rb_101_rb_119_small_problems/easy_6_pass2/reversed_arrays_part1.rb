=begin
Write a method that takes an Array as an argument, and reverses 
its elements in place; that is, mutate the Array passed into 
this method. The return value should be the same Array object.

You may not use `Array#reverse` or `Array#reverse!`.
=end

## Improved solution
def reverse!(list)
  if list.empty? || list.size == 1 ||
      (list.first == list.last && list.size == 3) ||
      list.all? { |element| element == list.first }
    return list
  end

  counter = list.size - 2
  list.size.times do
    list << list.slice!(counter)
    counter -= 1
  end
  list
end

list = [1, 2]
result = reverse!(list)
p result == [2, 1]
p list == [2, 1]
p list.object_id == result.object_id

list = [1, 1, 2]
result = reverse!(list)
p result == [2, 1, 1]
p list == [2, 1, 1]
p list.object_id == result.object_id

list = ['a', 'b', 'a']
result = reverse!(list)
p result == ['a', 'b', 'a']
p list == ['a', 'b', 'a']
p list.object_id == result.object_id


list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = [1, 2, 3, 4, 1]
result = reverse!(list)
p result == [1, 4, 3, 2, 1]
p list == [1, 4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []
# All test cases print `true`.




# ## Solution:
# def reverse!(list)
#   counter = -2
#   first_to_move = list[counter]

#   until first_to_move == list[1]
#     list << list.slice!(counter)
#     counter -= 1
#   end

#   list
# end

# list = [1, 2, 3, 4]
# result = reverse!(list)
# p result == [4, 3, 2, 1] # true
# p list == [4, 3, 2, 1] # true
# p list.object_id == result.object_id # true

# list = [1, 2, 3, 4, 1]
# result = reverse!(list)
# p result == [1, 4, 3, 2, 1] # true
# p list == [1, 4, 3, 2, 1] # true
# p list.object_id == result.object_id # true

# list = %w(a b e d c)
# p reverse!(list) == ["c", "d", "e", "b", "a"] # true
# p list == ["c", "d", "e", "b", "a"] # true

# list = ['abc']
# p reverse!(list) == ["abc"] # true
# p list == ["abc"] # true

# list = []
# p reverse!(list) == [] # true
# p list == [] # true
