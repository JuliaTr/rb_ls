=begin
On lines 37 and 38 of our code, we can see that `grace` and `ada` 
are located at the same coordinates. So why does line 39 output 
`false`? Fix the code to produce the expected output.
=end

class Person
  attr_reader :name
  attr_accessor :location

  def initialize(name)
    @name = name
  end

  def teleport_to(latitude, longitude)
    @location = GeoLocation.new(latitude, longitude)
  end
end

class GeoLocation
  attr_reader :latitude, :longitude

  def initialize(latitude, longitude)
    @latitude = latitude
    @longitude = longitude
  end

  # Was absent
  # Compares two locations based on their latitude and longitude
  # values.
  def ==(other)
    latitude == other.latitude && longitude == other.longitude
  end

  def to_s
    "(#{latitude}, #{longitude})"
  end
end

ada = Person.new('Ada')
ada.location = GeoLocation.new(53.477, -2.236)

grace = Person.new('Grace')
grace.location = GeoLocation.new(-33.89, 151.277)

ada.teleport_to(-33.89, 151.277)

puts ada.location    # (-33.89, 151.277)
puts grace.location  # (-33.89, 151.277)

p ada.location
p grace.location
=begin
#<GeoLocation:0x0000000100b74b88 @latitude=-33.89, @longitude=151.277>
#<GeoLocation:0x0000000100b74c00 @latitude=-33.89, @longitude=151.277>
=end

# # Before:
# puts ada.location == grace.location  # false

# After defining `==` method, which overrides `BsicObject#==`:
puts ada.location == grace.location    # true



## Experiments:
# Compares actual objects
p ada.location.equal? grace.location  # false # have different object ids

# Compares if two objects contain the same value and if they're of the
# same class.
p ada.location.eql? grace.location    # false
