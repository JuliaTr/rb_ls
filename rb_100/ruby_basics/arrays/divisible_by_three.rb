=begin
Use `Array#select` to iterate over `numbers` and return a new 
array that contains only numbers divisible by three. Assign 
the returned array to a variable named `divisible_by_three` and 
print its value using`#p`.

numbers = [5, 9, 21, 26, 39]

Expected output: [9, 21, 39]
=end

numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select { |number| number % 3 == 0 }
p divisible_by_three   # [9, 21, 39]
