=begin
On which lines in the following code does `self` refer to the 
instance of the `MeMyselfAndI` class referenced by `i` rather than 
the class itself?
=end

class MeMyselfAndI
  self         # `self` refers to class

  def self.me  # `self` refers to class
    self       # `self` refers to class
  end

  def myself
    self      # refers to instance
  end
end

i = MeMyselfAndI.new
p i

p i.myself

=begin
#<MeMyselfAndI:0x000000010d7d5718>
#<MeMyselfAndI:0x000000010d7d5718>
=end
