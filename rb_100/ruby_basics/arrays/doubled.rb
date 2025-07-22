=begin
Use Array#map to iterate over `numbers` and return a new 
array with each number doubled. Assign the returned array to 
a variable named `doubled_numbers` and print its value using 
`#p`.

Expected output: [2, 4, 6, 8, 10]
=end

numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map { |number| number * 2 }
p doubled_numbers    # [2, 4, 6, 8, 10]
