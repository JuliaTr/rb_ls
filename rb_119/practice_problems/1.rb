=begin
Create a method that takes an array of numbers as an argument. 
For each number, determine how many numbers in the array are 
smaller than it, and place the answer in an array. Return the 
resulting array.

When counting numbers, only count unique values. That is, if a 
number occurs multiple times in the array, it should only be 
counted once.

P 
Return new array of how many numbers smaller than current number

Rules:
- count only uniqye values
- if 1 element array -> return 0

D
Input: array of numbers
Output: array of how many numbers smaller than current number
Intermediate:
- array:   --
- hash: occurences
- boolean: if current number is greater than another number
- integer: count
- integer: iteration
- range: iteration    X
- string:  --

High-level:
- Return 0 if array size is 1
- Occurrences of numbers (#tally)
- Count how many numbers in input array smaller than current number


Count how many numbers in input array smaller than current number
Algo:
- Create `result`
- Iterate over each element of input array (`char1`)
  - Set 0 to `count`
  - Iterate from 0 upto array size - 1 (`index2`)
    - If arr[index2] == char1
      - next
    - If value in hash if greater than 1 and arr[index2] is smaller than `char1`
      - Increment `count` by 1
      - Decrement hash value by 1
    - If arr[index2] is smaller than `char1`
      - Increment `count` by 1
  - Add `count` to `result`
- Return `result`

[8, 1, 2, 2, 3]
 ^
  [8, 1, 2, 2, 3]
            ^

[3, ...]


[8, 1, 2, 2, 3]
       ^
  [8, 1, 2, 3]
            ^

[3, ...]


[1, 4, 6, 8, 13, 2, 4, 5, 4]
    ^
  [1, 4, 6, 8, 13, 2, 5]
                      ^

[0, 2 ...]
=end

## Refactored:
def smaller_numbers_than_current(arr)
  arr.map do |outer_value|
    count = 0
    arr.uniq.each do |inner_value|
      count += 1 if inner_value < outer_value
    end
    count
  end
end

p smaller_numbers_than_current([8, 1, 2, 2, 3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([7, 7, 7, 7]) == [0, 0, 0, 0]
p smaller_numbers_than_current([6, 5, 4, 8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]  #

my_array = [1, 4, 6, 8, 13, 2, 4, 5, 4]
result   = [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current(my_array) == result
# All test cases return `true`.



## Solution:
def count_numbers(hash, arr)
  result = []

  arr.each do |char1|
    count = 0
    duplicates = []

    0.upto(arr.size - 1) do |index2|
      if hash[arr[index2]] > 1 && arr[index2] < char1 && duplicates.empty?
        count += 1
        duplicates << arr[index2]
      elsif arr[index2] < char1 && !duplicates.include?(arr[index2])
        count += 1
      end
    end

    result << count
  end

  result
end

def smaller_numbers_than_current(arr)
  hash = arr.tally
  count_numbers(hash, arr)
end

p smaller_numbers_than_current([8, 1, 2, 2, 3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([7, 7, 7, 7]) == [0, 0, 0, 0]
p smaller_numbers_than_current([6, 5, 4, 8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]  #

my_array = [1, 4, 6, 8, 13, 2, 4, 5, 4]
result   = [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current(my_array) == result
# All test cases return `true`.
