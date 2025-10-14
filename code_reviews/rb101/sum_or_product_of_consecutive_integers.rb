=begin
Write a method that takes two arguments: a positive integer 
and a string. The method should compute and return the sum 
or product of all numbers between 1 and the supplied number, 
inclusive. It should calculate the sum if the string argument 
is the string `'+'`, or the product if the string argument is 
`'*'`.

You may assume that the number passed in is an integer 
greater than 1. If the string argument is not `'+'` or `'*'`, 
the method should return `nil`.
=end

## Provided solution:
def compute_sum(target_num)
  (1..target_num).sum
end

def compute_product(target_num)
  result = 1

  (1..target_num).each do |num|
    result *= num
  end

  result
end

def compute(target_num, operation)
  case operation
  when '+' then compute_sum(target_num)
  when '*' then compute_product(target_num)
  else nil
  end
end

# These examples should all print true
puts compute(5, '+') == 15
puts compute(6, '*') == 720
puts compute(7, '-') == nil
# All test cases return `true`.



## Code Review for Iqbal's Solution:
def compute(num, op)
  if op == '+'
    res = 0
    (1..num).each do |i|
      res += i
    end
    res
  elsif op == '*'
    res = 1
    (1..num).each do |i|
      res *= i
    end
    res
  else
    nil
  end
end

puts compute(5, '+') == 15
puts compute(6, '*') == 720
puts compute(7, '-') == nil
# All test cases return `true`.

=begin
CODE REVIEW:

**Does the solution meet the problem requirements?**
The solution meets the requirements abd provides a correct output.
It passes all provided test cases, returning `true`.


**Is the code readable and easy to understand?**
The solution is readable but it isn't easy to undrstand, because of
multiple reassignment, repeated logic.

Lines 3-7, 9-13 repeat the same iterate-and-accumulate pattern.

Please see detailed explanation below.


**Do variable and method names adhere to Ruby naming conventions?**
Variable `op` (lines 1, 2, 8) is too short. According to 
RuboCop cop (Naming/MethodParameterName) variable names should have 
minimum 3 letters.

While `i` (lines 4, 5, 10, 11) is a common name to use for each item in the iteration,
it's suggested to use more descriptive name for better readability.


**Are the variable and method names meaningful and precise?**
Consider to change varaible names into more meaningful and descriptive
names for consistency:
- `op` into `operation` (flagged by RuboCop Naming/MethodParameterName);
- `num` into `number` (for consistency);
- `i` into `item` (for consistency).

Please see the corrected version below.


**Is the code formatted correctly and free of syntax errors?**
The code is formatted correctly without syntax errors.


**Is the solution repetitive or overly complex?**
The solution is repeatitive and overly complex.

The logic (variable initialization, `#each` method invoked on a
Range object, the variable is reassigned inside the block, variable
refernce) on lines 3-7, 9-13 is repeated.

`res` assignment (line 3), multiple reassignment (lines 5, 9, 11),
and references (lines 7, 13) within `if/elsif/else` statement.


**Would it make more sense to use different looping or conditional structures?**
While `if/elsif/else` statement works correctly, it makes sense to
use `case` statement because we have only one case `operation` and 
condition of the `operation` (`+`, `*`). 

Also, `else` clause is redundant, because if no conditions are met,
conditional statements return `nil`.

However, some teams keep `else nil` for explicitness.


**Would the solution benefit from helper methods?**
There're two operations we work with: multiplication, and addition, everything
else should return `nil`. It can be beneficial to extract this logic into
two separate helper methods:

```ruby
def calculate_sum(number)
  (1..number).sum
end

def calculate_product(number)
  product = 1
  (1..number).each { |item| product *= item }
  product
end
```

However, the helper methods can be ommited in more idiomatic solution
like the one below at the end of the code review.


**Consider running the code through Rubocop and discussing any issues raised.**
There're 3 Rubocop offenses: Metrics/MethodLength, Naming/MethodParameterName,
Style/EmptyElse.

sum_or_product_of_consecutive_integers.rb:46:1: C: Metrics/MethodLength: 
Method has too many lines. [15/10]
def compute(num, op) ...
^^^^^^^^^^^^^^^^^^^^
sum_or_product_of_consecutive_integers.rb:46:18: C: Naming/MethodParameterName: 
Method parameter must be at least 3 characters long.
def compute(num, op)
                 ^^
sum_or_product_of_consecutive_integers.rb:59:3: C: [Correctable] Style/EmptyElse: 
Redundant else-clause.
  else
  ^^^^
`Naming/MethodParameterName` is flagged only for method
parameter name `op`, not all variables. `i` inside a block isn't 
flagged by that cop by default.

The solution below addresses Rubocop offenses: descriptive variable
names, reduced method length with `case` statement, redundant `else`
clause.

```ruby
def calculate_sum(number)
  (1..number).sum
end

def calculate_product(number)
  product = 1
  (1..number).each { |item| product *= item }
  product
end

def compute(number, operation)
  case operation
  when '+' then calculate_sum(number)
  when '*' then calculate_product(number)
  end
end
```

The alternative for `#sum` and to calculate product (using 
`#each`) is `#inject` or `#reduce` mehtods, which can be 
invoked on the Range object as well.

``` ruby
def compute(number, operation)
  numbers = (1..number)

  case operation
  when '+' then numbers.inject(:+)
  when '*' then numbers.inject(:*)
  end
end
```
=end


## Experiments:
# Without `else` clause, with variable full names:
def compute(number, operation)
  if operation == '+'
    result = 0
    (1..number).each do |item|
      result += item
    end
    result
  elsif operation == '*'
    result = 1
    (1..number).each do |item|
      result *= item
    end
    result
  end
end

puts compute(5, '+') == 15
puts compute(6, '*') == 720
puts compute(7, '-') == nil
# All test cases return `true`.


# With helper methods (no rubocop offenses):
def calculate_sum(number)
  (1..number).sum
end

def calculate_product(number)
  product = 1
  (1..number).each { |item| product *= item }
  product
end

def compute(number, operation)
  case operation
  when '+' then calculate_sum(number)
  when '*' then calculate_product(number)
  end
end

puts compute(5, '+') == 15
puts compute(6, '*') == 720
puts compute(7, '-') == nil
# All test cases return `true`.


# With `#inject`, without helper methods (no Rubocop offenses):
def compute(number, operation)
  numbers = (1..number)

  case operation
  when '+' then numbers.inject(:+)
  when '*' then numbers.inject(:*)
  end
end

puts compute(5, '+') == 15
puts compute(6, '*') == 720
puts compute(7, '-') == nil
# All test cases return `true`.


# With `#reduce`, without helper methods (no Rubocop offenses):
def compute(number, operation)
  numbers = (1..number)

  case operation
  when '+' then numbers.reduce(:+)
  when '*' then numbers.reduce(:*)
  end
end

puts compute(5, '+') == 15
puts compute(6, '*') == 720
puts compute(7, '-') == nil
# All test cases return `true`.
