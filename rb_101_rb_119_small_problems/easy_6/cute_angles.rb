=begin
Write a method that takes a floating point number that 
represents an angle between 0 and 360 degrees and returns a 
String that represents that angle in degrees, minutes and 
seconds. You should use a degree symbol (`°`) to represent 
degrees, a single quote (`'`) to represent minutes, and a 
double quote (`"`) to represent seconds. 

A degree has 60 minutes, while a minute has 60 seconds.

Note: You can use the following constant to represent the degree symbol

Note: your results may differ slightly depending on how you 
round values, but should be within a second or two of the 
results shown.

You should use two digit numbers with leading zeros when 
formatting the minutes and seconds, e.g., `321°03'07"`.
=end

DEGREE = "\u00B0"
MINUTES_IN_HOUR = 60
SECONDS_IN_MINUTE = 60

# p DEGREE      # "°"
# puts DEGREE   # °

def dms(angle_degree)
  full_degrees_from_angle = angle_degree.floor
  minutes_floor = 00
  seconds_floor = 00

  # checks if `angle_degree` is integer:
  if angle_degree.to_s.to_i != angle_degree
    full, remainder = angle_degree.divmod(full_degrees_from_angle)
    minutes = remainder * MINUTES_IN_HOUR
    minutes_floor = minutes.floor

    full, remainder = minutes.divmod(minutes_floor)
    seconds = remainder * SECONDS_IN_MINUTE
    seconds_floor = seconds.floor
  end

  "#{full_degrees_from_angle}#{DEGREE}" + format('%02d\'%02d"', minutes_floor, seconds_floor)
end

puts dms(30) == %(30°00'00")        # true
puts dms(76.73) == %(76°43'48")     # true
puts dms(254.6) #== %(254°36'00")   # actual result `254°35'59"`
puts dms(93.034773) == %(93°02'05") # true
puts dms(0) == %(0°00'00")          # true
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")  # true



## Possible solution:
DEGREE = "\u00B0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end


puts dms(30) == %(30°00'00")        # true
puts dms(76.73) == %(76°43'48")     # true
puts dms(254.6) == %(254°36'00")    # true
puts dms(93.034773) == %(93°02'05") # true
puts dms(0) == %(0°00'00")          # true
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00") # true
