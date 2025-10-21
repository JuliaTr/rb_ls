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

_____________________________________________________________

input: integer
output: integer, -1 if no valid number is found

e.g. 12, digits => [1, 2]; 
We can have either [1, 2] or [2, 1] (reversed array) => 21

e.g. 513, digits => [5, 1, 3]
We can have either [5, 3, 1] => 531 or 
[1, 3, 5], [3, 1, 5], [3, 5, 1] - we don't need them

e.g. 153, digits => [1, 3, 5] => [3, 5] => 153
e.g. 2017, digits => [2, 0, 1, 7] => [2, 0, 7, 1]
e.g. 531 => -1


Thought 1: 
- Break down a number into individual digits to find all 
  combinations of them all.
- Sort them
- Find adjacent to the given one

Thought 2: X
- Break down a number into individual digits
- Sort to find the largets

We're concerned about the last two digits.

Thought 3: X
- Switch the last two digits
- If it's the same
  - Keep the number
- Otherwise,
  - Return new integer, bigger than the in the input

e.g. 2071, digits [2, 7, 0, 1]
Thought 4: X
- Compare 7, 1; 7 > 1, so the last two digits are left alone

Loop goes from the current number up to max number, break if the 
number contains the current digits.

Algorithm:
- max number = sorted digits, find the max number
- current number ... max number, break if number contains all the
  digits
- 514, include? 5, 1, 3, return that number ....if no number is
  found, return -1
=end

# Step 2:
def max_number(input)
  input.to_s.chars.sort.reverse.join.to_i
end

def matches?(num, input)
  num.to_s.chars.sort == input.to_s.chars.sort
end

def next_bigger_num(input)
  max = max_number(input)

  (input + 1..max).to_a.each do |num|
    return num if matches?(num, input)
  end

  -1
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
# All test cases return `true`.


# Step 1:
def max_number(input)
  input.to_s.chars.sort.reverse.join.to_i
end

def next_bigger_num(input)
  p max_number(input)
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798

=begin
9
false

21
true

531
true

7210
false

111
false

531
false

987654321
false
=end



## Alternative solution:
def max_number(input)
  input.to_s.chars.sort.reverse.join.to_i
end

def next_bigger_num(input)
  max = max_number(input)

  (input + 1..max).to_a.each do |num|
    return num if max == max_number(num)
  end

  -1
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
# All test cases return `true`.