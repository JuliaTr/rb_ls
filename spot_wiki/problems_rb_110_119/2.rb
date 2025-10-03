=begin
Find all pairs:
You are given array of integers, your task will be to count all 
pairs in that array and return their count.

Notes:
- Array can be empty or contain only one value; in this case 
  return `0`.
- If there are more pairs of a certain number, count each pair 
  only once. E.g.: for `[0, 0, 0, 0]` the return value is `2`
  (2 pairs of 0s).

______________________________________________________________

PEDAC

P
Return a number of pairs of the same number

Rules/reqs:
- if an array is empty, return 0
- if array length is 1, return 0
- if array consists only with the same interers, return the number
  of full pairs (ex: [0, 0, 0] == 1, last `0` doesn't have it's pair)
- numbers constitue a pair can be anywhere in an array
  (ex: [2, 5, 6, 2] == 1), [2, 2] is a pair in the example

D
Input: array of integers
Output: integer
Intermediate:
- hash - find occurrences
  {1 => 1, 2 => 2 ....}
- array to select key-value pairs with value more than equal 2
- array to select only values


High-level:
- If original array is empty or has only 1 integer
  - return 0
- If original array has the same integer
  - find number which is the middle of the length (whole without 
    remainder), return it
- Otherwise,
  - Find all occurences
  - Select key-value pairs with value >= 2
  - Sum up total values
  - Divide by 2
=end



## Solution:
def pairs(arr)
  return 0 if arr.empty? || arr.length == 1
  return arr.length / 2 if arr.all?(arr[0])

  occurrences = Hash.new(0)
  arr.each { |number| occurrences[number] += 1 }

  occurrences.select { |k, v| v >= 2 }.values.sum / 2
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0
# All test cases return `true`.



## Experiments:
def pairs(arr)
  return 0 if arr.empty? || arr.length == 1
  return arr.length / 2 if arr.all?(arr[0])

  arr_pairs = []
  (0..arr.length - 1).each do |index_first|
    (index_first + 1..arr.length - 1).each do |index_second|
      arr_pairs << [arr[index_first], arr[index_second]]
    end
  end

  p arr_pairs

  arr_pairs.count { |subarray| subarray[0] == subarray[1] }
end

p pairs([1, 2, 5, 6, 5, 2]) == 2      # true
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3   # true
p pairs([1000, 1000]) == 1            # true
p pairs([]) == 0                      # true
p pairs([54]) == 0                    # true
