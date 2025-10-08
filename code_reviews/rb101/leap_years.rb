# =begin
# Rewrite your recursive `fibonacci` method so that it computes 
# its results without recursion.
# =end

# ## Provided solution:
# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end

# puts leap_year?(2016) == true
# puts leap_year?(2015) == false
# puts leap_year?(2100) == false
# puts leap_year?(2400) == true
# puts leap_year?(240000) == true
# puts leap_year?(240001) == false
# puts leap_year?(2000) == true
# puts leap_year?(1900) == false
# puts leap_year?(1752) == true
# puts leap_year?(1700) == false
# puts leap_year?(1) == false
# puts leap_year?(100) == false
# puts leap_year?(400) == true
# # All test cases print `true`



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
*Does the solution meet the problem requirements?*
The solution meets the problem requirement and it provide 
correct output. All test cases print `true`.

*Is the code readable and easy to understand?*
The code is difficult to understand because of incorrect 
indentation and multiple `if` statements.
The correct version:
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
Or more idiomatic version:
```ruby
def leap_year?(year)
  (year % 400).zero? || ((year % 4).zero? && year % 100 != 0)
end
```

*Do variable and method names adhere to Ruby naming conventions?*
Variable and method names adhere to Ruby convention.

*Are the variable and method names meaningful and precise?*
Variable and method name are meaningful and precise.

*Is the code formatted correctly and free of syntax errors?*
The indentation is either not enough, or to much. In Ruby, it should be
2 spaces.
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
*Is the solution repetitive or overly complex?*
The solution is overly complex.

*Would it make more sense to use different looping or 
conditional structures?*
It can make more sense to use more idiomatic approach:
```ruby
def leap_year?(year)
  (year % 400).zero? || ((year % 4).zero? && year % 100 != 0)
end
```

*Would the solution benefit from helper methods?*
There's no need in a helper method, because the problem
is too small.

*Consider running the code through Rubocop and discussing 
any issues raised.*
There're 11 Rubocop offenses.
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

This solution addresses all Rubocop offenses:
```ruby
def leap_year?(year)
  (year % 400).zero? || ((year % 4).zero? && year % 100 != 0)
end
```
=end

# ## Experiments:
# def leap_year?(year)
#   is_leap_year = false

#   if year % 4 == 0
#     is_leap_year = true
#   end

#   if year % 100 == 0
#     is_leap_year = false
#   end

#   if year % 400 == 0
#     is_leap_year = true
#   end

#   return is_leap_year
# end

# puts leap_year?(2016) == true
# puts leap_year?(2015) == false
# puts leap_year?(2100) == false
# puts leap_year?(2400) == true
# puts leap_year?(240000) == true
# puts leap_year?(240001) == false
# puts leap_year?(2000) == true
# puts leap_year?(1900) == false
# puts leap_year?(1752) == true
# puts leap_year?(1700) == false
# puts leap_year?(1) == false
# puts leap_year?(100) == false
# puts leap_year?(400) == true
# # All test cases return `true`


# def leap_year?(year)
#   if year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else 
#     year % 4 == 0
#   end
# end

# puts leap_year?(2016) == true
# puts leap_year?(2015) == false
# puts leap_year?(2100) == false
# puts leap_year?(2400) == true
# puts leap_year?(240000) == true
# puts leap_year?(240001) == false
# puts leap_year?(2000) == true
# puts leap_year?(1900) == false
# puts leap_year?(1752) == true
# puts leap_year?(1700) == false
# puts leap_year?(1) == false
# puts leap_year?(100) == false
# puts leap_year?(400) == true
# # All test cases return `true`


# def leap_year?(year)
#   year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
# end

# puts leap_year?(2016) == true
# puts leap_year?(2015) == false
# puts leap_year?(2100) == false
# puts leap_year?(2400) == true
# puts leap_year?(240000) == true
# puts leap_year?(240001) == false
# puts leap_year?(2000) == true
# puts leap_year?(1900) == false
# puts leap_year?(1752) == true
# puts leap_year?(1700) == false
# puts leap_year?(1) == false
# puts leap_year?(100) == false
# puts leap_year?(400) == true
# # All test cases return `true`



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