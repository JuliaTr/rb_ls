=begin
Based on what the error messages are telling you, update the 
relevant method definitions and method invocations as 
necessary so that the names are printed as shown below.

Expected output:
The dog's name is Spot.
The cat's name is Ginger.
=end

def dog
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat}."

=begin
naming_animals.rb:6:in `dog': wrong number of arguments 
(given 1, expected 0) (ArgumentError)
=end



## Solution:
def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

# Output:
# The dog's name is Spot.
# The cat's name is Ginger.
