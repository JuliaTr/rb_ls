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
- Select key-value pairs which values are more than `1` (Return: hash)
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



### LSBot additional recommendations:

# Reduce time complexity for each call and simplified logic without
# building a hash:
def select_duplicates(arr)
  result = []

  arr.uniq.each do |element|
    result << element if arr.count(element) > 1
  end

  result
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


# Single-pass solution:
def select_duplicates(arr)
  counts = Hash.new(0)

  # Count sccurences in a single pass
  arr.each do |element|
    counts[element] += 1  # counts[element] = counts[element] + 1
  end

  # Select elements with count > 1
  counts.select { |_, count| count > 1 }.keys
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
