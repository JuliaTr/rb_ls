# =begin
# When attempting to sort an array of various lengths, we are 
# surprised to see that an `ArgumentError` is raised. Make the 
# necessary changes to our code so that the various lengths can be 
# properly sorted and line 62 produces the expected output.
# =end

# ## Possible solution:
# class Length
#   attr_reader :value, :unit

#   def initialize(value, unit)
#     @value = value
#     @unit = unit
#   end

#   def as_kilometers
#     convert_to(:km, { km: 1, mi: 0.6213711, nmi: 0.539957 })
#   end

#   def as_miles
#     convert_to(:mi, { km: 1.609344, mi: 1, nmi: 0.8689762419 })
#   end

#   def as_nautical_miles
#     convert_to(:nmi, { km: 1.8519993, mi: 1.15078, nmi: 1 })
#   end

#   # `Length#<=>` method wasn't defined before. Added
#   def <=>(other)
#     case unit
#     when :km then value <=> other.as_kilometers.value
#     when :mi then value <=> other.as_miles.value
#     when :nmi then value <=> other.as_nautical_miles.value
#     end
#   end

#   def ==(other)
#     case unit
#     when :km  then value == other.as_kilometers.value
#     when :mi  then value == other.as_kilometers.value
#     when :nmi then value == other.as_kilometers.value
#     end
#   end

#   def <(other)
#     case unit
#     when :km then value < other.as_kilometers.value
#     when :mi then value < other.as_miles.value
#     when :nmi then value < other.as_nautical_miles.value
#     end
#   end

#   def <=(other)
#     self < other || self == other
#   end

#   def >(other)
#     !(self <= other)
#   end

#   def >=(other)
#     self > other || self == other
#   end

#   def to_s
#     "#{value} #{unit}"
#   end

#   private

#   def convert_to(target_unit, conversion_factors)
#     Length.new((value / conversion_factors[unit]).round(4), target_unit)
#   end
# end

# p [Length.new(1, :mi), Length.new(1, :nmi), Length.new(1, :km)]
# =begin
# [#<Length:0x000000010eec4640 @value=1, @unit=:mi>, 
# #<Length:0x000000010eec45c8 @value=1, @unit=:nmi>, 
# #<Length:0x000000010eec4578 @value=1, @unit=:km>]
# =end

# puts [Length.new(1, :mi), Length.new(1, :nmi), Length.new(1, :km)].sort
# # comparison of Length with Length failed (ArgumentError)

# # Works as expected:
# # 1 km
# # 1 mi
# # 1 nmi




# ## Alternative with `include Comparable`:
# class Length
#   include Comparable

#   attr_reader :value, :unit

#   def initialize(value, unit)
#     @value = value
#     @unit = unit
#   end

#   def as_kilometers
#     convert_to(:km, { km: 1, mi: 0.6213711, nmi: 0.539957 })
#   end

#   def as_miles
#     convert_to(:mi, { km: 1.609344, mi: 1, nmi: 0.8689762419 })
#   end

#   def as_nautical_miles
#     convert_to(:nmi, { km: 1.8519993, mi: 1.15078, nmi: 1 })
#   end

#   def <=>(other)
#     case unit
#     when :km  then value <=> other.as_kilometers.value
#     when :mi  then value <=> other.as_miles.value
#     when :nmi then value <=> other.as_nautical_miles.value
#     end
#   end

#   def to_s
#     "#{value} #{unit}"
#   end

#   private

#   def convert_to(target_unit, conversion_factors)
#     Length.new((value / conversion_factors[unit]).round(4), target_unit)
#   end
# end

# puts [Length.new(1, :mi), Length.new(1, :nmi), Length.new(1, :km)].sort

# =begin
# 1 km
# 1 mi
# 1 nmi
# =end





## Further exploration
class Length
  include Comparable

  attr_reader :value, :unit

  def initialize(value, unit)
    @value = value
    @unit = unit
  end

  def as_kilometers
    convert_to(:km, { km: 1, mi: 0.6213711, nmi: 0.539957 })
  end

  def as_miles
    convert_to(:mi, { km: 1.609344, mi: 1, nmi: 0.8689762419 })
  end

  def as_nautical_miles
    convert_to(:nmi, { km: 1.8519993, mi: 1.15078, nmi: 1 })
  end

  def <=>(other)
    case unit
    when :km  then value <=> other.as_kilometers.value
    when :mi  then value <=> other.as_miles.value
    when :nmi then value <=> other.as_nautical_miles.value
    end
  end

  def -(other)
    value - other.value
  end

  def to_s
    "#{value} #{unit}"
  end

  private

  def convert_to(target_unit, conversion_factors)
    Length.new((value / conversion_factors[unit]).round(4), target_unit)
  end
end

# Converting 10 km to nuatical miles and then to kilometers again
# yields a result of `10.001`.
p Length.new(10, :km).as_nautical_miles.as_kilometers == Length.new(10, :km) 
# false

p (Length.new(10, :km).as_nautical_miles.as_kilometers - Length.new(10, :km)).abs < 0.001
# true
