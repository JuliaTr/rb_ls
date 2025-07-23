=begin
Our `predict_weather` method should output a message 
indicating whether a sunny or cloudy day lies ahead. 
However, the output is the same every time the method is 
invoked. Why? Fix the code so that it behaves as expected.
=end

def predict_weather
  sunshine = ['true', 'false'].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather

=begin
$ ruby weather_forecast.rb
Today's weather will be sunny!

$ ruby weather_forecast.rb
Today's weather will be sunny!

$ ruby weather_forecast.rb
Today's weather will be sunny!

$ ruby weather_forecast.rb
Today's weather will be sunny!

$ ruby weather_forecast.rb
Today's weather will be sunny!
=end



## Bug fix:
def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather

=begin
$ ruby weather_forecast.rb
Today's weather will be sunny!

$ ruby weather_forecast.rb
Today's weather will be cloudy!
=end
