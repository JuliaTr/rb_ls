# What is used in this class definition but doesn't add any functionality?

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brightness level of super high and a color of green"
  end
end

=begin
The `return` doesn't add any functionality. The `information` mehtod
has only one line, and this is the last line. Methods return the 
value of the last line evaluated and executed implicitly. So, there's no need
to use `return` here.
=end
