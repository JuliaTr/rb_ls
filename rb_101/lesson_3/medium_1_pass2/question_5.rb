=begin
A Fibonacci calculator: A user passes in two numbers, and the 
calculator will keep computing the sequence until some limit 
is reached.

Fix an error.
=end

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# Output: 
# undefined local variable or method `limit' for main:Object (NameError)



## Bug fix:
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
# result is 13
