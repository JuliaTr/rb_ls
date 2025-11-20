=begin
Write a method that takes one argument, a positive integer, and 
returns a list of the digits in the number.

P
Return an array of digits from integer

Rules:
- positive integer
- all digits in the same sequence as in integer
- one digit-integer -> one-element array

D
Input: integer
Output: array
Intermediate:
- string: to convert integer
- array: of digits backwards


`digits`

High-level:
- Breakdown integer into digits (return: array)
- Reverse array

Breakdown integer into digits (return: array):
- Convert integer into string
- Convert string into array


=end

# # Not using `digits` method.
# def digit_list(number)
#   number.to_s.chars.map(&:to_i)
# end


def digit_list(number)
  number.digits
        .reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
