=begin
Exercise:
Use the `select` method to extract all odd numbers into a 
new array.
=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

result = arr.select { |item| item.odd? }
p result   # [1, 3, 5, 7, 9]



## Solution from the book
result = arr.select { |item| item % 2 != 0 }
p result     # [1, 3, 5, 7, 9]
