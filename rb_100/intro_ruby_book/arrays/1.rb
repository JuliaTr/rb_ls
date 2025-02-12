=begin
Exercise:
Below we have given you an array and a number. Write a program 
that checks to see if the number appears in the array.
=end
arr = [1, 3, 5, 7, 9, 11]
number = 3

# Solution:
arr = [1, 3, 5, 7, 9, 11]
number = 3
p arr.include?(number)    # true



### from the book
arr = [1, 3, 5, 7, 9, 11]
number = 3
arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

# Output: 3 is in the array.


arr = [1, 3, 5, 7, 9, 11]
number = 3
if arr.include?(number)
  puts "#{number} is indeed in the array."
end

# Output: 3 is indeed in the array.
