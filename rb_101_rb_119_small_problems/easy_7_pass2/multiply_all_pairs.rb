=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.


p
product of every pair of numbers that can be formed between the elements of the two Arrays

e
[2, 4], [4, 3, 1, 2]

[2, 4]
 ^
  [4, 3, 1, 2]
   ^

[2, 4], [2, 3], [2, 1], [2, 2], [4, 4], [4, 3], [4, 1], [4, 2]

d
i: 2 arrays
o: new array

h-l
- Pairs
- Calc product
- Sort

a
Pairs:
- `new_arr`
- Iterate over each number over arr1 (`num1`)
  - Iterate over each number over arr2 (`num2`)
    - new_arr << [num1, num2]
- Return `new_arr`

[2, 4]
    ^
  [4, 3, 1, 2]
            ^

new_arr << [num1, num2]


Calc product:
- Iterate over each pair in `new_arr` (`pair`) #map
  - pair[0] * pair[1] 

[2, 4]
2 * 4

- Sort arrays of products

=end

## Solution
def generate_pairs(arr1, arr2)
  new_arr = []
  arr1.each do |num1|
    arr2.each do |num2|
      new_arr << [num1, num2]
    end
  end
  new_arr
end

def multiply_all_pairs(arr1, arr2)
  pairs = generate_pairs(arr1, arr2)
  products = pairs.map { |pair| pair[0] * pair[1] }
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
# true




## Possible solution
# Option 1
def multiply_all_pairs(array_1, array_2)
  products = []

  array_1.each do |item_1|
    array_2.each do |item_2|
      products << item_1 * item_2
    end
  end

  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
# true



# Option 2
def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
# true




# Option 2 (break down):
def multiply_all_pairs(array_1, array_2)
  product = array_1.product(array_2)
  # [[2, 4], [2, 3], [2, 1], [2, 2], [4, 4], [4, 3], [4, 1], [4, 2]]

  product.map { |num1, num2| num1 * num2 }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
# true
