=begin
Write a method that takes one argument, a positive integer, 
and returns a list of the digits in the number.
=end

def digit_list(number)
  number.to_s.chars.map { |str| str.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true



## Possible solution:
# Option 1:
def digit_list(number)
  digits = []

  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)  # add at the beginning of the array
    break if number == 0
  end

  digits
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

=begin
irb(main):009:0> 12345.divmod(10)
=> [1234, 5]
=end



# Option 2 (idiomatic):
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
