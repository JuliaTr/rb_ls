# What is the result of executing the following code:
class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

oracle = Oracle.new
oracle.predict_the_future

=begin
Answer:
The result of executing codeis the return value is `You will` and one of the choices
selected randomly, defined in the array returned by the `choices` method. 
However, there's no output to the console, because there's neither 
`puts`, or `p` call.
=end

p oracle.predict_the_future
=begin
$ ruby 1.rb
"You will take a nap soon"
$ ruby 1.rb
"You will stay at work late"
$ ruby 1.rb
"You will stay at work late"
$ ruby 1.rb
"You will eat a nice lunch"
=end
