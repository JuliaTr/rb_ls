=begin
Write a class that will display:

ABC
xyz

when the following code is run:

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')
=end

class Transform
  def initialize(str)
    @str = str
  end

  def uppercase                    # instance method
    @str.upcase
  end

  def self.lowercase(other_name)   # class method
    other_name.downcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase            # ABC
puts Transform.lowercase('XYZ')   # xyz
# Works as expected
