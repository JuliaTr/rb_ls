=begin
Write a method named `time_of_day` that, given a boolean as 
an argument, prints `"It's daytime!"` if the boolean is true 
and `"It's nighttime!"` if it's false. Pass `daylight` into 
the method as the argument to determine whether it's day or 
night.

daylight = [true, false].sample
=end

daylight = [true, false].sample

def time_of_day(light)
  if light
    "It's daytime!"
  else
    "It's nighttime!"
  end
end

puts time_of_day(daylight)

=begin
$ ruby day_or_night.rb
It's daytime!
$ ruby day_or_night.rb
It's nighttime!
=end
