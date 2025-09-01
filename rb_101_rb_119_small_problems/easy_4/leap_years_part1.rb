=begin
In the modern era under the Gregorian Calendar, leap years 
occur in every year that is evenly divisible by 4, unless the 
year is also divisible by 100. If the year is evenly divisible 
by 100, then it is not a leap year unless the year is evenly 
divisible by 400.

Assume this rule is good for any year greater than year 0. 
Write a method that takes any year greater than 0 as input, 
and returns true if the year is a leap year, or false if it 
is not a leap year.

____________________________________________________________

PEDAC

Reqs/Rules:
Leap year:
- a leap year shoud even be divisible by 4
  (ex: 2016, 2400, 240000, 2000, 1752, 400)
- a leap year can also and can be divisible by 100
  (ex: 2400, 240000, 2000, 400)
- not divisible by 400

Not leap year:
- 2015, 2100, 240001, 1900, 1700, 1, 100 are not leap years

=end

## Simplified solution:
def leap_year?(year)
  (year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0))
end

p leap_year?(2016) == true       # true
p leap_year?(2015) == false      # true
p leap_year?(2100) == false      # true
p leap_year?(2400) == true       # true
p leap_year?(240000) == true     # true
p leap_year?(240001) == false    # true
p leap_year?(2000) == true       # true
p leap_year?(1900) == false      # true
p leap_year?(1752) == true       # true
p leap_year?(1700) == false      # true
p leap_year?(1) == false         # true
p leap_year?(100) == false       # true
p leap_year?(400) == true        # true



# Solution:
def leap_year?(year)
  if (year % 4 == 0) && (year % 100 == 0) && (year % 400 == 0)
    return true
  elsif (year % 4 == 0) && (year % 100 != 0) && (year % 400 != 0)
    return true
  end

  false
end

p leap_year?(2016) == true       # true
p leap_year?(2015) == false      # true
p leap_year?(2100) == false      # true
p leap_year?(2400) == true       # true
p leap_year?(240000) == true     # true
p leap_year?(240001) == false    # true
p leap_year?(2000) == true       # true
p leap_year?(1900) == false      # true
p leap_year?(1752) == true       # true
p leap_year?(1700) == false      # true
p leap_year?(1) == false         # true
p leap_year?(100) == false       # true
p leap_year?(400) == true        # true



## Experiments:
# Leap years:
# All numbers are divisible by 4
# If number divisible by 400, then it's divisible by 100 as well
p 2016 % 4 == 0     # true
p 2016 % 100 == 0   # false
p 2016 % 400 == 0   # false

p 2400 % 4 == 0     # true
p 2400 % 100 == 0   # true
p 2400 % 400 == 0   # true

p 240000 % 4 == 0     # true
p 240000 % 100 == 0   # true
p 240000 % 400 == 0   # true

p 2000 % 4 == 0     # true
p 2000 % 100 == 0   # true
p 2000 % 400 == 0   # true

p 1752 % 4 == 0       # true
p 1752 % 100 == 0     # false
p 1752 % 400 == 0     # false

p 400 % 4 == 0      # true
p 400 % 100 == 0   # true
p 400 % 400 == 0   # true


# Not leap years:
# 2015, 2100, 240001, 1900, 1700, 1, 100
p 2015 % 4 == 0       # false
p 2015 % 100 == 0     # false
p 2015 % 400 == 0     # false

p 2100 % 4 == 0       # true
p 2100 % 100 == 0     # true
p 2100 % 400 == 0     # false

p 240001 % 4 == 0       # false
p 240001 % 100 == 0     # false
p 240001 % 400 == 0     # false

p 1900 % 4 == 0       # true
p 1900 % 100 == 0     # true
p 1900 % 400 == 0     # false

p 1700 % 4 == 0       # true
p 1700 % 100 == 0     # true
p 1700 % 400 == 0     # false

p 1 % 4 == 0       # false
p 1 % 100 == 0     # false
p 1 % 400 == 0     # false

p 100 % 4 == 0       # true
p 100 % 100 == 0     # true
p 100 % 400 == 0     # false


## Possible solution:
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true       # true
p leap_year?(2015) == false      # true
p leap_year?(2100) == false      # true
p leap_year?(2400) == true       # true
p leap_year?(240000) == true     # true
p leap_year?(240001) == false    # true
p leap_year?(2000) == true       # true
p leap_year?(1900) == false      # true
p leap_year?(1752) == true       # true
p leap_year?(1700) == false      # true
p leap_year?(1) == false         # true
p leap_year?(100) == false       # true
p leap_year?(400) == true        # true


# Shorter:
def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

p leap_year?(2016) == true       # true
p leap_year?(2015) == false      # true
p leap_year?(2100) == false      # true
p leap_year?(2400) == true       # true
p leap_year?(240000) == true     # true
p leap_year?(240001) == false    # true
p leap_year?(2000) == true       # true
p leap_year?(1900) == false      # true
p leap_year?(1752) == true       # true
p leap_year?(1700) == false      # true
p leap_year?(1) == false         # true
p leap_year?(100) == false       # true
p leap_year?(400) == true        # true



## Further exploration:
# Test 1:
def leap_year?(year)
  if year % 100 == 0
    false
  elsif year % 400 == 0
    true
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true       # true
p leap_year?(2015) == false      # true
p leap_year?(2100) == false      # true
# p leap_year?(2400) == true       # false
# p leap_year?(240000) == true     # false
p leap_year?(240001) == false    # true
# p leap_year?(2000) == true       # false
p leap_year?(1900) == false      # true
p leap_year?(1752) == true       # true
p leap_year?(1700) == false      # true
p leap_year?(1) == false         # true
p leap_year?(100) == false       # true
# p leap_year?(400) == true        # false

=begin
The test cases failed for leap years (2400, 240000, 2000, 400).
They all divisible by 100 and by 400.

Whereas in the original solution `false` is returned only if the
year isn't divisible by 400. Not leap years aren't divisible by 
400.
=end


# Test 1:
def leap_year?(year)
  if year % 4 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 400 == 0
  end
end

p leap_year?(2016) == true       # true
p leap_year?(2015) == false      # true
# p leap_year?(2100) == false      # false
p leap_year?(2400) == true       # true
p leap_year?(240000) == true     # true
p leap_year?(240001) == false    # true
p leap_year?(2000) == true       # true
# p leap_year?(1900) == false      # false
p leap_year?(1752) == true       # true
p leap_year?(1700) == false      # false
p leap_year?(1) == false         # true
# p leap_year?(100) == false       # false
p leap_year?(400) == true        # true

=begin
The test cases failed for not leap years (2100, 1900, 100).
They all divisible by 4, so `true`.
=end
