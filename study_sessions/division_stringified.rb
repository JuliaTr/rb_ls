=begin
Have the method division_stringified(num1, num2) take both 
parameters being passed, divide num1 by num2, and return 
the result as a string with properly formatted commas.

If an answer is only 3 digits long, return the number with 
no commas.

Example: if num1 is 123456789 and num2 is 10000 the output 
should be "12,346".

Note: 2 divided by 3 should return '1'


D:
I: 2 integers
O: str
Int: convert to float, divide, convert to array reversed,
      join to string

High-level:
- convert to float
- divide, round
- convert to string reversed,
- join to string comma separated
=end

def division_stringified(num1, num2)
  division = (num1.to_f / num2.to_f).round
  to_str_reversed = division.to_s.reverse!
  duplicate = to_str_reversed.dup
 
  3.step(by: 4, to: duplicate.size - 1) do |idx|
    to_str_reversed.insert(idx, ",")
  end

  to_str_reversed.reverse!
end

p division_stringified(2, 3) == "1"
p division_stringified(5, 2) == "3"
p division_stringified(7, 3) == "2"
p division_stringified(6874, 67) == "103"
p division_stringified(503394930, 43) == "11,706,859"
p division_stringified(1, 10) == "0"
p division_stringified(100000, 1) == "100,000"
# All test cases return `true`
