=begin
What could you add to this class to simplify it and remove two 
methods from the class definition while still maintaining the 
same functionality?
=end

class BeesWax
  def initialize(type)
    @type = type
  end

  def type
    @type
  end

  def type=(t)
    @type = t
  end

  def describe_type
    puts "I am a #{@type} of Bees Wax"
  end
end

wax1 = BeesWax.new('yellow')
p wax1.type
p wax1.type = 'white'
p wax1.type

=begin
"yellow"
"white"
"white"
=end



## Solution:
class BeesWax
  attr_accessor :type

  def initialize(type)
    @type = type
  end

  def describe_type
    puts "I am a #{type} of Bees Wax"   # we have getter
  end
end

wax1 = BeesWax.new('yellow')
p wax1.type
p wax1.type = 'white'
p wax1.type

=begin
"yellow"
"white"
"white"
=end




## Experiments
class BeesWax
  def initialize(type)
    @type = type
  end

  def type
    @type
  end

  def type=(t)
    @type = t
  end

  def describe_type
    puts "I am a #{type} of Bees Wax"  # we have getter
  end
end

wax1 = BeesWax.new('yellow')
wax1.describe_type  #  am a yellow of Bees Wax



class BeesWax
  def initialize(type)
    @type = type
  end

  def describe_type
    puts "I'm a #{type} of Bees Wax"  # don't have getter
  end
end

wax1 = BeesWax.new('yellow')
wax1.describe_type
=begin
undefined local variable or method `type' for #<BeesWax:0x0000000109814ea8 
@type="yellow"> (NameError)
=end



class BeesWax
  def initialize(type)
    @type = type
  end

  def describe_type
    puts "I'm a #{@type} of Bees Wax"  # don't have getter
  end
end

wax1 = BeesWax.new('yellow')
wax1.describe_type  # I'm a yellow of Bees Wax
