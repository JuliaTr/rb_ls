# require 'time'

=begin
Write two methods that each take a time of day in 24 hour 
format, and return the number of minutes before and after 
midnight, respectively. Both methods should return a value in 
the range `0..1439`.

_____________________________________________________________

PEDAC:
Notes:
After midnight (habe past time):
12 * 60 = 720
12 hour 34 minutes 754

Before midnight (left time):
12 * 60 = 720
720 - 34 = 686
=end

## Refactored solution:
MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
MINUTES_IN_DAY = MINUTES_IN_HOUR * HOURS_IN_DAY  # 1440

def after_midnight(time)
  hours = time[0..1].to_i
  minutes = time[3..4].to_i

  hours_after_midnight = hours * MINUTES_IN_HOUR
  (hours_after_midnight + minutes) % MINUTES_IN_DAY
end

def before_midnight(time)
  (MINUTES_IN_DAY - after_midnight(time)) % MINUTES_IN_DAY
end

p after_midnight('00:00') == 0        # true
p before_midnight('00:00') == 0       # true
p after_midnight('12:34') == 754      # true
p before_midnight('12:34') == 686     # true
p after_midnight('24:00') == 0        # true
p before_midnight('24:00') == 0       # true



## Solution:
MINUTES_IN_HOUR = 60

def after_midnight(time)
  if time == '00:00' || time == '24:00'
    0
  else
    hours_after_midhight = time[0..1].to_i * MINUTES_IN_HOUR 
    total_minutes = hours_after_midhight + time[3..4].to_i
  end
end

def before_midnight(time)
  if time == '00:00' || time == '24:00'
    0
  else
    hours_after_midhight = time[0..1].to_i * MINUTES_IN_HOUR
    total_minutes = hours_after_midhight - time[3..4].to_i

  end
end

p after_midnight('00:00') == 0        # true
p before_midnight('00:00') == 0       # true
p after_midnight('12:34') == 754      # true
p before_midnight('12:34') == 686     # true
p after_midnight('24:00') == 0        # true
p before_midnight('24:00') == 0       # true



## Possible solution:
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
  delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

p after_midnight('00:00') == 0        # true
p before_midnight('00:00') == 0       # true
p after_midnight('12:34') == 754      # true
p before_midnight('12:34') == 686     # true
p after_midnight('24:00') == 0        # true
p before_midnight('24:00') == 0       # true

=begin
12 * 60 = 720
720 + 34 = 754
754 % 1440 = 754

1440 - 754 = 686

(0 * 60 + 0) % 1440 = 0
=end



# ## Further exploration (in progress):
# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR   # 1440

# def after_midnight(str)
#   hour, minutes = str.split(':').map(&:to_i)
#   p hour
#   p minutes

#   time = Time.new(2025, 9, 10, hour, minutes)

# end

# def before_midnight(str)
#   after_midnight(str)

# end

# # p after_midnight('00:00') == 0
# # p before_midnight('00:00') == 0
# p after_midnight('12:34') #== 754
# # p before_midnight('12:34') == 686
# # p after_midnight('24:00') == 0
# # p before_midnight('24:00') == 0
