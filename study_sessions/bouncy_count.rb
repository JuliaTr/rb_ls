# review

=begin
BOUNCY COUNT
Some numbers have only ascending digits, like 123, 3445, 2489, etc.
Some numbers have only descending digits, like 321, 5443, 9842, etc.

A number is "bouncy" if it has both ascending and descending 
digits, like 313, 92543, etc.

Write a method that takes a list of numbers and counts how many 
of them are bouncy.

______________________________________________________________

bouncy:
9121213
212
104, 1004

Idea1: ---
- Convert each integer into array of integers
- Iterate over arrays
- Define if next is LESS AND next + 1 number is GREATER than next one
- then it's bouncy, count this number

1004

9121213
212
104, 1004

Idea2:
- Convert each number into array of integers
- Sort in ascending order
- Sort in descending order
- Check if number is the same as number in array in ascending 
  or descending order
- If not, number is bouncy
- Count number 
=end

def bouncy(arr)
  arr_digits = arr.map { |num| num.digits.reverse }

  count = 0
  arr_digits.each do |subarray|
    unless subarray.sort == subarray ||
            subarray.sort.reverse == subarray
      count += 1
    end
  end

  count
end

# Not from study session, created from scratch
p bouncy([9121213, 123999]) == 1
p bouncy([123, 234, 212]) == 1
p bouncy([111, 22, 3334, 4333]) == 0
p bouncy([]) == 0
p bouncy([104, 1004]) == 2
# All test cases return `true`.
