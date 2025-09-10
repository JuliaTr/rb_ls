=begin
The time of day can be represented as the number of minutes 
before or after midnight. If the number of minutes is positive, 
the time is after midnight. If the number of minutes is negative, 
the time is before midnight.

Write a method that takes a time using this minute-based format 
and returns the time of day in 24 hour format (hh:mm). Your 
method should work with any integer input.

How would you approach this problem if you were allowed to use 
Ruby's `Date` and `Time` classes?
=end

# Problem 1 (use % to perform the entire normalization operation):

MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24

def time_of_day(minutes)
  hours, minutes = minutes.divmod(MINUTES_IN_HOUR)
  # p hours
  # p minutes

  hours = hours % HOURS_IN_DAY  # if more than 60 mins and less than 0
  # p hours

  format('%02d:%02d', hours, minutes)
end

p time_of_day(0) == "00:00"       # true
p time_of_day(-3) == "23:57"      # true
p time_of_day(35) == "00:35"      # true
p time_of_day(-1437) == "00:03"   # true
p time_of_day(3000) == "02:00"    # true
p time_of_day(800) == "13:20"     # true
p time_of_day(-4231) == "01:29"   # true

=begin
p time_of_day(35) == "00:35"
$ ruby after_midnight_time_further_exploration_learn_from_others.rb
0
35
0
true

p time_of_day(3000) == "02:00"
$ ruby after_midnight_time_further_exploration_learn_from_others.rb
50
0
2
true
=end
