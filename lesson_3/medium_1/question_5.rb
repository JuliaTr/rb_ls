# Fix the code so it works.

limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"
# Output: 
# `undefined local variable or method `limit' for main:Object (NameError)`

# The code doesn't work because a local variable `limit` is not visible in the scope of the `fib` method.
# Methods cannot access local variables ouside of its scope.



## Solution

limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"
# Output: result is 13

