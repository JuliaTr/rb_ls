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

MINUTES_IN_HOUR = 60

def after_midnight(minutes)
  if minutes == '00:00' || minutes == '24:00'
    0
  else
    hours_after_midhight = minutes[0..1].to_i * MINUTES_IN_HOUR 
    total_minutes = hours_after_midhight + minutes[3..4].to_i
  end

end

def before_midnight(minutes)
  if minutes == '00:00' || minutes == '24:00'
    0
  end

end

p after_midnight('00:00') == 0        # true
# p before_midnight('00:00') == 0
p after_midnight('12:34') == 754      # true
# p before_midnight('12:34') == 686
p after_midnight('24:00') == 0        # true
# p before_midnight('24:00') == 0
