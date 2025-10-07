=begin
Rewrite your recursive `fibonacci` method so that it 
computes its results without recursion.
=end

# Recursion:
def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(4) == 3         # true
p fibonacci(5) == 5         # true
p fibonacci(40)             # 102334155  (calculates for some time)



# Possible solution:
def fibonacci(nth)
  first, last = [1, 1]

  3.upto(nth) do   # 1  1  2 (first numbers of sequence)
    first, last = [last, first + last]
  end

  last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
# All test cases return `true`.



## Experiments (learn from other):
def fibonacci(number_of_numbers)
  arr = [1, 1]

  loop do
    arr << arr[-2] + arr[-1]
    return arr.last if arr.count == number_of_numbers
  end
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
# All test cases return `true`.
