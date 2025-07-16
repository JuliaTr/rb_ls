=begin
Write the following methods so that each output is `true`.

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36
=end

def add(number1, number2)
  number1 + number2
end

def multiply(multiplier1, multiplier2)
  multiplier1 * multiplier2
end

puts add(2, 2) == 4  # true
puts add(5, 4) == 9  # true
puts multiply(add(2, 2), add(5, 4)) == 36  # true
