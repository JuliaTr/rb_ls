=begin
Write a method that searches for all multiples of 3 or 5 
that lie between 1 and some other number, and then computes 
the sum of those multiples. For instance, if the supplied 
number is `20`, the result should be `98`
(3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer 
greater than 1.
=end

# Provide solution:
def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0

  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end

  sum
end

# These examples should all print true
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
# All test cases return `true`.



# Code review for Stephanie's solution:
def multisum(x)
  result = 0
  nums = (1..x).to_a
  nums.each do |y|
    if y % 3 == 0
      result += y
    elsif y % 5 == 0
      result += y
    end
  end
  return result
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
# All test cases return `true`.



=begin
CODE REVIEW:

**Does the solution meet the problem requirements?**
The solution meets the problem requirements. All test cases
return `true`.


**Is the code readable and easy to understand?**
The code is not easy to read because of not descriptive enough
variable names on lines 1 (`x`), 3 (`nums`), 4 (`y`).


**Do variable and method names adhere to Ruby naming conventions?**
The variables adhere to Ruby naming convention.


**Are the variable and method names meaningful and precise?**
Consider giving more descriptive names for clarity of the intent to: 
- an argument like `maximum` or `limit` (instead of `x`);
- block's parameter like `number` (instead of `y`)
- an initialized variable like `numbers` (instead of `nums`) 
This improves readability without extra comments.

Below is a version of your code with more descriptive variables' 
names:
```ruby
def multisum(maximum)
  result = 0
  numbers = (1..maximum).to_a
  numbers.each do |number|
    if number % 3 == 0
      result += number
    elsif number % 5 == 0
      result += number
    end
  end
  return result
end
```


**Is the code formatted correctly and free of syntax errors?**
The code is formatted correctly and free of syntax errors.


**Is the solution repetitive or overly complex?**
The solution is overly complex. Line 3 `nums = (1..x).to_a`
allocate an array unnecessary. Considere iterating directly
on the range `(1..x)` to avoid extra memory. Also, on lines 5 - 9
both branches add the same value to `result`. Both braches do the
same work. Prefer a single condition with to remove duplication
like:
```ruby
result += number if divisible?(number, 3) || divisible?(number, 5)
```

**Would it make more sense to use different looping or 
conditional structures?**
The iteration method `#each` is appropriate for this problem.


**Would the solution benefit from helper methods?**
Consider extracting logic to define if an integer is 
divisible by 3 or 5 into a helper method `divisible?(number, divisor)`. 
This read well, though it's optional for a small method.
```ruby
def divisible?(number, divisor)
  (number % divisor).zero?
end

def multisum(maximum)
  result = 0

  (1..maximum).each do |number|
    result += number if divisible?(number, 3) || divisible?(number, 5)
  end

  result
end
```
This read well, though it's optional for a small method.

A concise version without a helper method:
```ruby
def multisum(maximum)
  result = 0

  (1..maximum).each do |number|
    result += number if (number % 3).zero? || (number % 5).zero?
  end

  result
end
```

**Consider running the code through Rubocop and discussing any 
issues raised.**
There're 4 Rubocop offenses, which include: Naming/MethodParameterName
Style/NumericPredicate, Style/RedundantReturn.

```ruby
multiples_of_3_or_5.rb:39:14: C: Naming/MethodParameterName: 
Method parameter must be at least 3 characters long.
def multisum(x)
             ^
multiples_of_3_or_5.rb:43:8: C: [Correctable] Style/NumericPredicate: 
Use (y % 3).zero? instead of y % 3 == 0.
    if y % 3 == 0
       ^^^^^^^^^^
multiples_of_3_or_5.rb:45:11: C: [Correctable] Style/NumericPredicate: 
Use (y % 5).zero? instead of y % 5 == 0.
    elsif y % 5 == 0
          ^^^^^^^^^^
multiples_of_3_or_5.rb:49:3: C: [Correctable] Style/RedundantReturn: 
Redundant return detected.
  return result
```

Use (number % 3).zero? and (number % 5).zero? (Style/NumericPredicate),
drop the explicit return (Style/RedundantReturn), use longer parameter name
(Naming/MethodParameterName)

The suggested solutions to address readability, variables naming and 
all Rubocop offenses:
```ruby
def divisible?(number, divisor)
  (number % divisor).zero?
end

def multisum(maximum)
  result = 0

  (1..maximum).each do |number|
    result += number if divisible?(number, 3) || divisible?(number, 5)
  end

  result
end
```

The `nums` variable initialization was redundant. Consider invoking
`#each` or `#upto` directly on Range object without converting to Array
object.

`#each` and `#upto` are idiomatic are are equally readable alternatives.
=end



## Experiments:
# Improved variables' naming, no `return` keyword on the last
# line:
def multisum(maximum)
  result = 0
  numbers = (1..maximum).to_a
  numbers.each do |number|
    if number % 3 == 0
      result += number
    elsif number % 5 == 0
      result += number
    end
  end
  result
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
# All test cases return `true`.



# Helper method (Rubocop offenses):
def divisible?(number, divisor)
  (number % divisor).zero?
end

def multisum(maximum)
  result = 0
  numbers = (1..maximum).to_a

  numbers.each do |number|
    result += number if divisible?(number, 3) || divisible?(number, 5)
  end

  result
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
# All test cases return `true`.


# (no Rubocop offenses):
def divisible?(number, divisor)
  (number % divisor).zero?
end

def multisum(maximum)
  result = 0

  (1..maximum).each do |number|
    result += number if divisible?(number, 3) || divisible?(number, 5)
  end

  result
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
# All test cases return `true`.



# Concise refactor without a helper method (no Rubocop offenses):
def multisum(maximum)
  result = 0

  (1..maximum).each do |number|
    result += number if (number % 3).zero? || (number % 5).zero?
  end

  result
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
# All test cases return `true`.



# `for` loop (Rubocop complains to use `#each` over `for` loop):
def divisible?(number, divisor)
  (number % divisor).zero?
end

def multisum(maximum)
  result = 0

  for number in 1..maximum
    result += number if divisible?(number, 3) || divisible?(number, 5)
  end

  result
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
# All test cases return `true`.



# `#upto` (no Rubocop offenses):
def divisible?(number, divisor)
  (number % divisor).zero?
end

def multisum(maximum)
  result = 0

  1.upto(maximum) do |number|
    result += number if divisible?(number, 3) || divisible?(number, 5)
  end

  result
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168
# All test cases return `true`.
