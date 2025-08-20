# How can you make this work without using the `begin/end until` 
# construct?

def factors(number)
  divisor = number
  p divisor

  factors = []
  p factors

  begin
    factors << number / divisor if number % divisor == 0
    p factors

    divisor -= 1
    p divisor
  end until divisor == 0

  factors
end

p factors(3)
=begin
3
[]

Iteration 1:
[1]
2

Iteration 2:
[1]
1

Iteration 3:
[1, 3]
0

[1, 3]
=end

p factors(0)   
# divided by 0 (ZeroDivisionError)

p factors(-3) 
# infinite loop



## Bug fix:
# Show all of the factors of the input number:
def factors(number)
  divisor = number
  factors = []

  loop do
    break if divisor <= 0

    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end

  factors
end

p factors(3)    # [1, 3]
p factors(0)    # []
p factors(-3)   # []



## Possible solution:
def factors(number)
  divisor = number
  factors = []

  while divisor > 0
    factors << number / divisor if number % divisor == 0
  end

  factors
end

p factors(3)    # [1, 3]
p factors(0)    # []
p factors(-3)   # []


### Bonus 1:
=begin
*What is the purpose of the `number % divisor == 0`?*

The `number % divisor == 0` if `number` is divided by
`divisor` without a remaider, but the result is an integer number. 
=end

### Bonus 2:
=begin
*What is the purpose of the second-to-last line (line 8) in 
the method (the `factors` before the method's end)*

As we need to find all factors, we return and array of a list 
of factors (initialized on line 2 and referenced on line 8). The method returns the last evaluated expression 
implicitly, which is `factors` here.
=end
