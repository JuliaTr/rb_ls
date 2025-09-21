=begin
Write a method that returns an Array that contains every 
other element of an Array that is passed in as an argument. 
The values in the returned list should be those values that 
are in the 1st, 3rd, 5th, and so on elements of the argument 
Array.
=end

def oddities(arr)
  new_arr = []

  arr.each_with_index do |element, index|
    new_arr << element if index == 0 || index == 2 || index == 4
  end

  new_arr
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]      # true
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]   # true
p oddities(['abc', 'def']) == ['abc']         # true
p oddities([123]) == [123]                    # true
p oddities([]) == []                          # true
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]      # true



## Possible solution:
def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end

  odd_elements
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]      # true
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]   # true
p oddities(['abc', 'def']) == ['abc']         # true
p oddities([123]) == [123]                    # true
p oddities([]) == []                          # true
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]      # true



## Further exploration:
# Write a companion method that returns the 2nd, 4th, 6th, and 
# so on elements of an array. Try to solve this exercise in at 
# least 2 additional ways.

# Option 1:
def evens(arr)
  even_elements = []
  index = 1

  while index < arr.size
    even_elements << arr[index]
    index += 2
  end

  even_elements
end

p evens([2, 3, 4, 5, 6]) == [3, 5]         # true
p evens([1, 2, 3, 4, 5, 6]) == [2, 4, 6]   # true
p evens(['abc', 'def']) == ['def']         # true
p evens([123]) == []                       # true
p evens([]) == []                          # true
p evens([1, 2, 3, 4, 1]) == [2, 4]         # true


# Option 2:
def evens(arr)
  index = 0
  arr.each_with_object([]) do |element, new_arr|
    if index == 1 ||  index== 3 || index == 5
      new_arr << element
    end
    index += 1
  end
end

p evens([2, 3, 4, 5, 6]) == [3, 5]         # true
p evens([1, 2, 3, 4, 5, 6]) == [2, 4, 6]   # true
p evens(['abc', 'def']) == ['def']         # true
p evens([123]) == []                       # true
p evens([]) == []                          # true
p evens([1, 2, 3, 4, 1]) == [2, 4]         # true
