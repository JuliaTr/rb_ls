# What would happen if I called the methods like shown below?
class Television
  def self.manufacturer
  end

  def model
  end
end

tv = Television.new
tv.manufacturer      # NoMethodError
=begin
It will happen, because `manufactureer` is a class method, not
an instance method. It can be called on the `Television` class
itself.
=end

tv.model             # (will work)

Television.manufacturer  # (will work)
Television.model         # NoMethodError
=begin
This will happen, because `model` is an instance method. It can be called
only on the instance `tv` of the class `Televisiom`.
=end
