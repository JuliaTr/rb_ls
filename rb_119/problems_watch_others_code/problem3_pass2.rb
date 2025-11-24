# took 1 hour

=begin
PROBLEM
Create a method that takes a positive integer number and
returns the next bigger number formed by the same digits.

12 ==> 21
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using these digits, return -1

9 ==> -1
111 ==> -1
531 ==> -1

_________________________

531: 135, 315 => -1

P
Return the next bigger number than input.

Rules:
- if number has 1 digit -> return `-1`
- if number has all digits the same -> return `-1`
- if there're no combinations with integers greater than input number -> return `-1`
  531: 135, 315 => -1

12: 21
513: 531, 315, 135
2017: 2071, 2710...

D
Input: integer
Output: integer (next bigger integer)
Intermediate:
- array: convert string to array to work with individual elements
- array: generate combinations
- hash: ---
- string: convert to string
- integer: convert each array element into integer
- integer: iterate over indexes
- range: iterate over indexes
- boolean: check if the difference in value between input and another combination is the smallest

High-level:
Idea1: 
- Generate all combinations
- Calculate difference in value between input and combination
- Return integer which difference in value with input is the smallest

Idea2:
- Rotate digits in number
- Calculate difference in value between input and rotated integer
- Return integer which difference in value with input is the smallest


Idea1:
- Generate all combinations
- Calculate difference in value between input and combination
- Return integer which difference in value with input is the smallest

#combination, #permutation
12
[1, 2]

Calculate difference in value between input and combination:
- Create `hash` (with integer (key), difference (value))
- Iterate over array
  - Each pair conver to iteger
  - integer - input
  - store in hash

Return key which has minimum difference

=end

def all_combinations(arr)
  result = []
  arr.permutation { |permutation| result << permutation }
  result
end

def hash_with_difference(arr, number)
  hash = {}
  arr.each do |subarray|
    new_number = subarray.map(&:to_s).join.to_i
    difference = new_number - number
    hash[new_number] = difference if new_number != number
  end
  hash
end

def next_bigger_num(number)
  digits = number.digits.reverse

  return -1 if digits.size == 1 || digits.uniq.size == 1

  combinations = all_combinations(digits)
  hash = hash_with_difference(combinations, number)
  selected_pair = hash.select { |_, val| val > 0 }
  selected_pair.empty? ? -1 : selected_pair.keys[0]
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
# All test cases return `true`.
