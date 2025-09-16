=begin
Write a method that takes two Array arguments in which each 
Array contains a list of numbers, and returns a new Array 
that contains the product of each pair of numbers from the 
arguments that have the same index. You may assume that the 
arguments contain the same number of elements.
=end

def multiply_list(arr1, arr2)
  counter_for_arr2 = 0

  arr1.map do |number1|
    product = arr2[counter_for_arr2] * number1
    counter_for_arr2 += 1
    product
  end
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77] # true



## Possible solution:
def multiply_list(list_1, list_2)
  products = []

  list_1.each_with_index do |item, index|
    products << item * list_2[index]
  end

  products
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77] # true



## Further exploration:
# Option 1:
def multiply_list(list_1, list_2)
  list_1.zip(list_2).map { |sub_arr| sub_arr.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77] # true


# Option 2:
def multiply_list(arr1, arr2)
  new_arr = []

  # `number1` and `number2` are integers in each subarray
  arr1.zip(arr2) { |number1, number2| new_arr << (number1 * number2) }
  
  new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77] # true
