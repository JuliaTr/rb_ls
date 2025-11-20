=begin
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) 
such that the first 2 numbers are 1 by definition, and each 
subsequent number is the sum of the two previous numbers. 
This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, 
but the results grow at an incredibly rapid rate. For example, 
the 100th Fibonacci number is 354,224,848,179,261,915,075 -- 
that's enormous, especially considering that it takes 6 iterations 
before it generates the first 2 digit number.

Write a method that calculates and returns the index of the 
first Fibonacci number that has the number of digits specified 
as an argument. (The first Fibonacci number has index 1.)

_____________________________________________________________

PEDAC

P: return index of the first Fib number consists of a number of
  digits specified in the argument.

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
- 2 is number of digits 13 has
- 7 is 13's index

High-level:
- Find index of the first number which consists of the number of
  digits specified in the argument
=end

## Possible solution:
def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847



## Experiments:
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

p fibonacci(0)    # 0
p fibonacci(1)    # 1
p fibonacci(2)    # 1   
p fibonacci(3)    # 2   (1 + 1 = 2)
p fibonacci(4)    # 3   (2 + 1 = 3)
p fibonacci(5)    # 5
p fibonacci(6)    # 8
p fibonacci(7)    # 13

# `7` is a position (index) for `13`

=begin
`0`, `1` .. `6` are n in "compute the nth Fibonacci number", using 
zero-based counting. It means "give me the 6th Fibonacci number 
with zero-based indexing."

Zero-based indexing for Fibonacci sequence is a convention.

The argument `n` in `fibonacci(n)` serves the same pupose as an
index in an array: it specifies the *position* of the element we want
to retrieve from the sequence.
=end
