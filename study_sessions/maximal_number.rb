=begin
Given an integer n, find the maximal number you can obtain by 
deleting exactly one digit of the given number.

791983 -> 91983
152 -> 52
1001 -> 101
10 -> 1

High-level
Idea1:
- Substr 
['791983', '91983', '1983'....]
['1001', '001', '01'...]



Idea2:
- Delete each digit
- Store in array of substr
                     .         .
                   791983   791983
['91983', '71983', '79983', '79183', '79193', '79198']
['1001', '101', '101', '100']
- sort in descending order
- return first substr

Algo
- empty arr `arr`
- Convert number to str
- Index = 0

- Loop over number of times of the size of the str
  - Convert str into array `conv_arr`
  - Delete digit with index a.delete_at(0)
  - Push `conv_arr`.join to `arr`
  - increment index

- Sort
- return first substr.to_i

'791983'
a = [7, 9, 1, 9, 8, 3]
a.delete_at(0)
a = [9, 1, 9, 8, 3]

=end

## Refactored and more idiomatic
def delete_digit(number)
  str = number.to_s

  # Iterate over a range of indices:
  arr = (0...str.size).map do |index|
    temp_str = str.dup  # Create a copy to modify
    temp_str.slice!(index)
    temp_str.to_i
  end

  arr.max
end

puts delete_digit(791983) == 91983
puts delete_digit(152) == 52
puts delete_digit(1001) == 101
puts delete_digit(10) == 1
# All test cases print `true`



## Solution
def delete_digit(number)
  arr = []
  str = number.to_s
  index = 0

  str.size.times do
    conv_arr = str.chars
    conv_arr.delete_at(index)
    arr << conv_arr.join
    index += 1
  end

  arr.sort.last.to_i
end

puts delete_digit(791983) == 91983
puts delete_digit(152) == 52
puts delete_digit(1001) == 101
puts delete_digit(10) == 1
# All test cases print `true`
