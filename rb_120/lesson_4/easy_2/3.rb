=begin
- How do you find where Ruby will look for a method when that method
is called?
- How can you find an object's ancestors?
- What is the lookup chain for `Orange` and `HotSauce`?
=end

module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

p "----------- Orange lookup chain"
p Orange.ancestors  # [Orange, Taste, Object, Kernel, BasicObject]

p "----------- HotSauce lookup chain"
p HotSauce.ancestors # [HotSauce, Taste, Object, Kernel, BasicObject]

=begin
Ruby will look for a method starting in the first class in the chain
(in this case `Orange`) and eventually `BasicObject` if the method
is found nowhere in the lookup chain.

If the method is nowhere in the chain, ruby raises a `NoMethodError`.
=end



## Experiments:
module Taste
  def flovor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

p Orange.new.temperature
=begin
undefined method `temperature' for #<Orange:0x0000000103395400> 
(NoMethodError)
=end
