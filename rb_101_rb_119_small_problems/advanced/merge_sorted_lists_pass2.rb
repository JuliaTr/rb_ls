=begin
Write a method that takes two sorted Arrays as arguments, and 
returns a new Array that contains all elements from both 
arguments in sorted order.

You may not provide any solution that requires you to sort the 
result array. You must build the result array one element at a 
time in the proper order.

Your solution should not mutate the input arrays.

D
Return new array with sorted elements from input arrays

Rules:
- input arrays are already sorted
- if one of input arrays are empty, return that one, which isn't empty
- NO mutations of input arrays are allowed

D
Input: 2 sorted arrays
Output: new array
Intermediate:
- arrays: ---
- hashes: ---
- strings: ----
- integer: iteration over indexes
- range: iteration over indexes
- boolean: check if number from one array is less than number 
            from another array

High-level:
Idea1:
- Create empty array
- Go over array1 and array2
- Check if number from one array is less than number from another array
- Put each number from each arrays to empty array

Idea2:
- Create empty array
- Go over each array  (HELPER) and check if element is greater than element
in new array. If greater put after already existed. If not put infront.


=end


## Possible solution:
def merge(arr1, arr2)
  index2 = 0
  result = []

  # Iterate over each value in `arr1`
  arr1.each do |value|
    p "---------------------------"
    p value

    # While index for arr2 in less than arr2 size AND arr2 value
    # is less or equal arr1 value
    while index2 < arr2.size && arr2[index2] <= value
      p "I'm in the while loop"
      p arr2[index2]

      # Push arr2 element to `result`
      result << arr2[index2]
      index2 += 1
    end

    p value
    p result
    
    result << value

    p result
  end

  result.concat(arr2[index2..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
=begin
"---------------------------"
1
1
[]
[1]
"---------------------------"
5
"I'm in the while loop"
2
5
[1, 2]
[1, 2, 5]
"---------------------------"
9
"I'm in the while loop"
6
"I'm in the while loop"
8
9
[1, 2, 5, 6, 8]
[1, 2, 5, 6, 8, 9]
[1, 2, 5, 6, 8, 9]
=end

p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
