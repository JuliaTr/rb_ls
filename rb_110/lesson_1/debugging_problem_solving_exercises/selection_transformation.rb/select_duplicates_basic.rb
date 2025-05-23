=begin
Exercise (​basic)​: Create a method `select_duplicates` that 
takes an array and returns a new array containing only the 
elements that appear more than once in the original array.

p select_duplicates([1, 2, 3, 1, 2, 4]) == [1, 2]
p select_duplicates(['a', 'b', 'c', 'a', 'b', 'd']) == ['a', 'b']
p select_duplicates([1, 2, 3, 4]) == []
p select_duplicates([]) == []

Algorithm:
- Define method `select_duplicates` that takes an array
- Find unique elements (Return: array)
- Count occurence
  - Create a hash to assign occurences to keys, which are unique 
    array values (Return: hash)
- Select key-value pairs which values are more than `1` (Rturn: hash)
  - Select keys (Return: array)
=end

def select_duplicates(arr)
  hash = {}

  arr.uniq.each do |element|
    hash[element] = arr.count(element)
  end

  hash.select { |_, value| value > 1 }.keys
end

p select_duplicates([1, 2, 3, 1, 2, 4]) == [1, 2]
p select_duplicates(['a', 'b', 'c', 'a', 'b', 'd']) == ['a', 'b']
p select_duplicates([1, 2, 3, 4]) == []
p select_duplicates([]) == []

# Output:
# true
# true
# true
# true



## Optimal ways
def select_duplicates(arr)
  arr.uniq.each_with_object({}) do |element, hash|
    hash[element] = arr.count(element)
  end.select { |_, value| value > 1 }.keys
end

p select_duplicates([1, 2, 3, 1, 2, 4]) == [1, 2]
p select_duplicates(['a', 'b', 'c', 'a', 'b', 'd']) == ['a', 'b']
p select_duplicates([1, 2, 3, 4]) == []
p select_duplicates([]) == []

# Output:
# true
# true
# true
# true
