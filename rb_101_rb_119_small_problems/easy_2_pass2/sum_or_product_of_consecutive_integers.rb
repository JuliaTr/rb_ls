=begin
Write a program that asks the user to enter an integer greater 
than 0, then asks if the user wants to determine the sum or 
product of all numbers between 1 and the entered integer.

Examples:
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end

## Improved solution:
# Calculation performs only when user selects it.
puts '>> Please enter an integer greater than 0:'
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
answer_sum_or_product = gets.chomp

array = (1..number).to_a

case answer_sum_or_product
when 's'
  sum = array.sum
  puts "The sum of the integers between 1 and #{number} is #{sum}."
when 'p'
  product = 1
  counter = 0
  while counter < array.size
    product = product * array[counter]
    counter += 1
  end
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "We don't have this operation. Please select 's' (sum) " \
       "or 'p' (product) next time. Good bye!"
end

=begin
$ ruby sum_or_product_of_consecutive_integers.rb
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.

$ ruby sum_or_product_of_consecutive_integers.rb
>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

$ ruby sum_or_product_of_consecutive_integers.rb
>> Please enter an integer greater than 0:
8
>> Enter 's' to compute the sum, 'p' to compute the product.
f
We don't have this operation. Please select 's' (sum) or 'p' 
(product) next time. Good bye!
=end



## Solution:
puts '>> Please enter an integer greater than 0:'
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
answer_sum_or_product = gets.chomp

array = (1..number).to_a
sum = array.sum

product = 1
counter = 0
while counter < array.size
  product = product * array[counter]  # product *= array[counter]
  counter += 1
end

case answer_sum_or_product
when 's'
  puts "The sum of the integers between 1 and #{number} is #{sum}."
when 'p'
  puts "The product of the integers between 1 and #{number} is #{product}."
end

=begin
$ ruby sum_or_product_of_consecutive_integers.rb
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.

$ ruby sum_or_product_of_consecutive_integers.rb
>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end



## Possible solution:
def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts " >> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end

=begin
$ ruby sum_or_product_of_consecutive_integers.rb
>> Please enter an integer greater than 0
5
 >> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.
$ ruby sum_or_product_of_consecutive_integers.rb
>> Please enter an integer greater than 0
6
 >> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end



## Further exploration
# 'Enumerable#inject':
puts '>> Please enter an integer greater than 0'
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = (1..number).inject(:+)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = (1..number).inject(:*)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops.Ukknown operation."
end

=begin
$ ruby sum_or_product_of_consecutive_integers.rb
>> Please enter an integer greater than 0
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.

$ ruby sum_or_product_of_consecutive_integers.rb
>> Please enter an integer greater than 0
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end


# 'Enumerable#reduce':
puts '>> Please enter an integer greater than 0:'
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product:"
operation = gets.chomp

if operation == 's'
  sum = (1..number).reduce(:+)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = (1..number).reduce(:*)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end

=begin
$ ruby sum_or_product_of_consecutive_integers.rb
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product:
s
The sum of the integers between 1 and 5 is 15.

$ ruby sum_or_product_of_consecutive_integers.rb
>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product:
p
The product of the integers between 1 and 6 is 720.
=end



## Solution with input validation:
def valid_number?(num)
  num.to_i.to_s == num && num.to_i != 0
end

def get_number
  number = nil
  loop do
    puts '>> Please enter an integer greater than 0:'
    number = gets.chomp

    break if valid_number?(number)
    puts ">> An integer isn't valid. Please try again."
  end

  number.to_i
end

number = get_number

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = (1..number).reduce(:+)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = (1..number).reduce(:*)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end

=begin
$ ruby sum_or_product_of_consecutive_integers.rb
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.

$ ruby sum_or_product_of_consecutive_integers.rb
>> Please enter an integer greater than 0:
a
>> An integer isn't valid. Please try again.
>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 6 is 21.

$ ruby sum_or_product_of_consecutive_integers.rb
>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end
