=begin
Exercise:
Use the `each` method of Array to iterate over 
`[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`, and print out values 
greater than 5.
=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |item| puts item if item > 5 }

# Output:
# 6
# 7
# 8
# 9
# 10
