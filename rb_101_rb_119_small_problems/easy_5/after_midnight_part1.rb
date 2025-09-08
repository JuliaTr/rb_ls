=begin
The time of day can be represented as the number of minutes 
before or after midnight. If the number of minutes is positive, 
the time is after midnight. If the number of minutes is negative, 
the time is before midnight.

Write a method that takes a time using this minute-based 
format and returns the time of day in 24 hour format (hh:mm). 
Your method should work with any integer input.

You may not use Ruby's `Date` and `Time` classes.

Disregard Daylight Savings and Standard Time and other complications.

Hint: one day is 1440 minutes

______________________________________________________________

PEDAC

Input: integer
Output: string with hours and minutes

Reqs/rules:
- one day is 1440 min
- 24 hours is 00:00
- 0 min argument is full 24 hours
- if argumnet greater than 0 this is how many minutes have past
  from 0:00
- 1 hour is 60 mins
- "13:30" -> 13 is hours


Examples:
Positive argument (0 to 1439):
time_of_day(0) == "00:00"
time_of_day(35) == "00:35"
time_of_day(800) == "13:20"

Positive argument (>1439):
time_of_day(3000) == "02:00"

Negative argument:
time_of_day(-3) == "23:57"
time_of_day(-1437) == "00:03"
time_of_day(-4231) == "01:29"

Data Structures:
Integer -> string  (35 -> "35") 

Note:
If integer 60 and more
  - add +1 to hours
Positive argument (>1439)
  - define how many days have past

Algorithm:
Positive argument (0 to 1439):
- Convert integer into a string (minutes)
- If an integer is 0 through 10 
  - prepend 0 to a string
- If integer 60 and more
  - (use `#divmod`)

Positive argument (>1439):
- If integer > 1440
  - the hours divide on 24
=end

## Refactored solution:
MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
MINUTES_IN_DAY = 1440

def calculate_hours_in_minutes(num)
  num.divmod(MINUTES_IN_HOUR)
end

def time_of_day(num)
  minutes = num
  hour = 00

  if num > MINUTES_IN_DAY
    hour, minutes = calculate_hours_in_minutes(num)
    hour = hour / HOURS_IN_DAY
  elsif (num < 0) && (num > -59)
    minutes = MINUTES_IN_HOUR - num.abs
    hour = HOURS_IN_DAY - 1
  elsif (num <= -MINUTES_IN_HOUR) && (num >= -MINUTES_IN_DAY)
    minutes = MINUTES_IN_DAY - num.abs
  elsif num >= MINUTES_IN_HOUR
    hour, minutes = calculate_hours_in_minutes(num)
  elsif num <= -MINUTES_IN_DAY
    hour, minutes = calculate_hours_in_minutes(num)
    hour = (hour.abs / HOURS_IN_DAY) - 1
  end

  hour = hour.to_s.prepend('0') if hour.between?(0, 10)
  minutes = minutes.to_s.prepend('0') if minutes.between?(0, 10)

  "#{hour.to_s}:#{minutes.to_s}"
end

p time_of_day(0) == "00:00"         # true
p time_of_day(-3) == "23:57"        # true
p time_of_day(35) == "00:35"        # true
p time_of_day(-1437) == "00:03"     # true
p time_of_day(3000) == "02:00"      # true
p time_of_day(800) == "13:20"       # true
p time_of_day(-4231) == "01:29"     # true



## Solution:
MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
MINUTES_IN_DAY = 1440

def calculate_hours_in_minutes(num)
  num.divmod(MINUTES_IN_HOUR)
end

def time_of_day(num)
  minutes = num.to_s
  hour = '00'

  if num.between?(0, 10)
    minutes.prepend('0')
  end

  if num > MINUTES_IN_DAY
    hour, minutes = calculate_hours_in_minutes(num)
    hour = hour / HOURS_IN_DAY

    hour = hour.to_s.prepend('0') if hour.between?(0, 10)
    minutes = minutes.to_s.prepend('0') if minutes.between?(0, 10)
    
  elsif (num < 0) && (num > -59)
    minutes = MINUTES_IN_HOUR - num.abs
    hour = HOURS_IN_DAY - 1

  elsif num <= -MINUTES_IN_HOUR && num >= -MINUTES_IN_DAY
    minutes = MINUTES_IN_DAY - num.abs
    minutes = minutes.to_s.prepend('0') if minutes.between?(0, 10)

  elsif num >= MINUTES_IN_HOUR
    hour, minutes = calculate_hours_in_minutes(num)

  elsif num <= -MINUTES_IN_DAY
    hour, minutes = calculate_hours_in_minutes(num)
    hour = (hour.abs / HOURS_IN_DAY) - 1

    hour = hour.to_s.prepend('0') if hour.between?(0, 10)
    minutes = minutes.to_s.prepend('0') if minutes.between?(0, 10)
  end

  "#{hour.to_s}:#{minutes.to_s}"
end

p time_of_day(0) == "00:00"         # true
p time_of_day(-3) == "23:57"        # true
p time_of_day(35) == "00:35"        # true
p time_of_day(-1437) == "00:03"     # true
p time_of_day(3000) == "02:00"      # true
p time_of_day(800) == "13:20"       # true
p time_of_day(-4231) == "01:29"     # true
