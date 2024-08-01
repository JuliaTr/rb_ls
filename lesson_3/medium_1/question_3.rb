### How to make this work without using the `begin / end until` construct, so that when the `number` argument is `0` there was no error message?
def factors(number)
  divisor = number
  factors = []

  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  
  factors
end

puts factors(10)
# Output:
# 1
# 2
# 5
# 10
puts factors(5)
# Output:
# 1
# 5
puts factors(0)
# Output: `6:in `%': divided by 0 (ZeroDivisionError)`



## Solution:
# With a `while` condition:
def factors(number)
  divisor = number
  factors = []

  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end

  factors
end

puts factors(10)
# Output:
# 1
# 2
# 5
# 10
puts factors(5)
# Output:
# 1
# 5
puts factors(0)
# Output: (nothing)



## Bonus 1 -> answer:
# The purpose of the `number % divisor == 0` is to determine whether the division of integers is without the remainder.

## Bonus 2 -> answer:
# The purpose of the `factors` on line 38 is to return the value of the `factors` calculated within the method and being assigned to this variable.
# Without an explicit `return` keyword the method returns the last line executed.
# Otherwise, the method would return `nil`.



## Experiments
# With an `until` condition:
def factors(number)
  divisor = number
  factors = []

  until divisor == 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end

  factors
end

puts factors(10)
# Output:
# 1
# 2
# 5
# 10
puts factors(5)
# Output:
# 1
# 5
puts factors(0)
# Output: (nothing)