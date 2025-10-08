=begin
Rewrite your recursive `fibonacci` method so that it computes 
its results without recursion.
=end

## Provided solution:
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
# All test cases print `true`



# Code review for Vlad's solution:
def leap_year?(year)
  is_leap_year = false
  if year % 4 == 0
    is_leap_year = true
  end
  if year % 100 == 0
  is_leap_year = false
  end
if year % 400 == 0
        is_leap_year = true
  end
  return is_leap_year
end

# These examples should all print true
puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
# All test cases print `true`

=begin
CODE REVIEW

**Does the solution meet the problem requirements?**
The solution meets the problem requirement and it provide 
correct output. All test cases print `true`.


**Is the code readable and easy to understand?**
The code is difficult to understand because of incorrect 
indentation and three separate `if` statements.


**Do variable and method names adhere to Ruby naming conventions?**
Variable and method names adhere to Ruby convention.


**Are the variable and method names meaningful and precise?**
Variable and method name are meaningful and precise.


**Is the code formatted correctly and free of syntax errors?**
There're no syntax errors. 

Line 10 is indented with 8 space, while the surrounding 
blocks are 2. Line 7 doesn't have an indentation regarding the
surrounding `if` statement. Line 9 doesn't have an indentation 
regarding the surrounding method definition. These mislead the 
eye about which match which `if` statement.

Correct indentations:
```ruby
def leap_year?(year)
  is_leap_year = false

  if year % 4 == 0
    is_leap_year = true
  end

  if year % 100 == 0
    is_leap_year = false
  end

  if year % 400 == 0
    is_leap_year = true
  end
  
  return is_leap_year
end
```

Consistent 2-space indentation will make block structure 
immediately clear.


**Is the solution repetitive or overly complex?**
The solution isn't repetitive. It's overly complex because 
of multiple `if` statements.


**Would it make more sense to use different looping or 
conditional structures?**

There're three separate `if` statements on lines 3-5, 6-8, 9-11).
Because they're independent, all three run for every input,
which is unnecessary and makes control flow harder to follow.

Version with `if/elsif/else` statement and removed
initialized `is_leap_year` variable (line 2), further its
reassingme (line 4, 7, 10), and referencing (line 12):
```ruby
def leap_year?(year)
  if (year % 400).zero?
    true
  elsif (year % 100).zero?
    false
  else
    (year % 4).zero?
  end
end
```

Or with early return:
```ruby
def leap_year?(year)
  return true if (year % 400).zero?
  return false if (year % 100).zero?
  (year % 4).zero?
end
```

Or more idiomatic approach. Note that it has readability 
trade-offs: some teams prefer ste-by-step conditional for 
maintainability. Consider using parentheses and `#zero?` method
(substitutes `year % 400 == 0`, for example) consistenly for clarity.
```ruby
def leap_year?(year)
  (year % 400).zero? || ((year % 4).zero? && year % 100 != 0)
end
```

**Would the solution benefit from helper methods?**
There's no need in a helper method, because the problem
is too small.

**Consider running the code through Rubocop and discussing 
any issues raised.**
There're 11 Rubocop offenses, which include: Style/IfUnlessModifier, 
Style/NumericPredicate, Layout/IndentationWidth, 
Layout/IndentationConsistency, Layout/EndAlignment,
Style/RedundantReturn.

leap_years.rb:37:3: C: [Correctable] Style/IfUnlessModifier: 
Favor modifier if usage when having a single-line body. 
Another good alternative is the usage of control flow &&/||.
  if year % 4 == 0
  ^^
leap_years.rb:37:6: C: [Correctable] Style/NumericPredicate: 
Use (year % 4).zero? instead of year % 4 == 0.
  if year % 4 == 0
     ^^^^^^^^^^^^^
leap_years.rb:40:3: C: [Correctable] Style/IfUnlessModifier: 
Favor modifier if usage when having a single-line body. 
Another good alternative is the usage of control flow &&/||.
  if year % 100 == 0
  ^^
leap_years.rb:40:6: C: [Correctable] Style/NumericPredicate: 
Use (year % 100).zero? instead of year % 100 == 0.
  if year % 100 == 0
     ^^^^^^^^^^^^^^^
leap_years.rb:41:3: C: [Correctable] Layout/IndentationWidth: 
Use 2 (not 0) spaces for indentation.
  is_leap_year = false
  
leap_years.rb:43:1: C: [Correctable] Layout/IndentationConsistency: 
Inconsistent indentation detected.
if year % 400 == 0 ...
^^^^^^^^^^^^^^^^^^
leap_years.rb:43:1: C: [Correctable] Style/IfUnlessModifier: 
Favor modifier if usage when having a single-line body. 
Another good alternative is the usage of control flow &&/||.
if year % 400 == 0
^^
leap_years.rb:43:4: C: [Correctable] Style/NumericPredicate: 
Use (year % 400).zero? instead of year % 400 == 0.
if year % 400 == 0
   ^^^^^^^^^^^^^^^
leap_years.rb:44:1: C: [Correctable] Layout/IndentationWidth: 
Use 2 (not 8) spaces for indentation.
        is_leap_year = true
^^^^^^^^
leap_years.rb:45:3: W: [Correctable] Layout/EndAlignment: 
end at 45, 2 is not aligned with if at 43, 0.
  end
  ^^^
leap_years.rb:46:3: C: [Correctable] Style/RedundantReturn: 
Redundant return detected.
  return is_leap_year

The suggested solutions above (with `if/elsif/else` statement, 
early return, idiomatic) address all Rubocop offenses.
=end



## Experiments:
# Correct indentations:
def leap_year?(year)
  is_leap_year = false

  if year % 4 == 0
    is_leap_year = true
  end

  if year % 100 == 0
    is_leap_year = false
  end

  if year % 400 == 0
    is_leap_year = true
  end

  return is_leap_year
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
# All test cases return `true`



# `if/elsif/else` statement:
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else 
    year % 4 == 0
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
# All test cases return `true`



# `#zero?` (no Rubocop offenses):
def leap_year?(year)
  if (year % 400).zero?
    true
  elsif (year % 100).zero?
    false
  else
    (year % 4).zero?
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
# All test cases return `true`


# Early return (no Rubocop offenses):
def leap_year?(year)
  return true if (year % 400).zero?
  return false if (year % 100).zero?
  (year % 4).zero?
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
# All test cases return `true`



# Idiomatic approach:
def leap_year?(year)
  year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
# All test cases return `true`



# After running through Rubocop:
def leap_year?(year)
  (year % 400).zero? || ((year % 4).zero? && year % 100 != 0)
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
# All test cases return `true`
