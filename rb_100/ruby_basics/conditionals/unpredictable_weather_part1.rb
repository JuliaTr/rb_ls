=begin
In the code below, sun is randomly assigned as `'visible'` or 
`'hidden'`. Write an if statement that prints `"The sun is so bright!"` 
if sun equals `'visible'`.

sun = ['visible', 'hidden'].sample
=end

sun = ['visible', 'hidden'].sample

def define_sunlight(sunlight)
  if sunlight == 'visible'
    "The sun is so bright!"
  else
    "The is behind a cloud!"
  end
end

puts define_sunlight(sun)

=begin
$ ruby unpredictable_weather_part1.rb
The sun is so bright!

$ ruby unpredictable_weather_part1.rb
The is behind a cloud!
=end
