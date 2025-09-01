=begin
The British Empire adopted the Gregorian Calendar in 1752, 
which was a leap year. Prior to 1752, the Julian Calendar was 
used. Under the Julian Calendar, leap years occur in any year 
that is evenly divisible by 4.

Using this information, update the method from the previous 
exercise to determine leap years both before and after 1752.
=end

def leap_year?(year)
  if year <= 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true  # true
p leap_year?(1700) == true  # true
p leap_year?(1) == false    # true
p leap_year?(100) == true   # true
p leap_year?(400) == true   # true


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
