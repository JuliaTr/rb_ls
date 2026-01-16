# What is the result of the following:

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
p trip.predict_the_future

=begin
$ ruby 2.rb
"You will fly to Fiji"
$ ruby 2.rb
"You will romp in Rome"
$ ruby 2.rb
"You will visit Vegas"
=end

=begin
Answer: 
The result of executing code is `"You will <some tripg>"`, where "some trip"
is the return value of `choices` method from `RoadTrip` class. This
is because Ruby's lookup path. It looks in the class the object instantiated.
Then it looks in the parent class. Here' `predict_the_future` method definition
Ruby finds in `Oracle` class, which `RoadTrip` inherits. On line 5,
Ruby looks for `choices` method definition and first it finds in `RoadTrip`,
which overrides `choices` method definition in `Oracle` class.
=end



## Experiments:
class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choose  # name changed intentionally
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
p trip.predict_the_future

=begin
$ ruby 2.rb
"You will stay at work late"
$ ruby 2.rb
"You will take a nap soon"
$ ruby 2.rb
"You will eat a nice lunch"
=end
