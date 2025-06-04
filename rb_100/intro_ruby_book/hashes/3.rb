=begin
Exercise:
Using some of Ruby's built-in Hash methods, write a program 
that loops through a hash and prints all of the keys. Then 
write a program that does the same thing except printing 
the values. Finally, write a program that prints both.
=end

hsh = { 'cat' => 'pet', 
        'hummingbird' => 'wild bird', 
        'elephant' => 'wild mammal'
      }

# Print each key:
hsh.each { |key, _| puts key }

# Output:
# cat
# hummingbird
# elephant


# Print each value:
hsh.each { |_, value| puts value }

# Output:
# pet
# wild bird
# wild mammal


# Print each key and value
hsh.each { |key, value| puts "#{key.capitalize} is a #{value}."}

# Output:
# Cat is a pet.
# Hummingbird is a wild bird.
# Elephant is a wild mammal.



## Solution from the exercise:
opposites = { positive: "negative", up: "down", right: "left" }

opposites.each_key { |key| puts key }
opposites.each_value { |value| puts value }
opposites.each do |key, value|
  puts "The opposites of #{key} is #{value}"
end

# Output:
# positive
# up
# right

# negative
# down
# left

# The opposites of positive is negative
# The opposites of up is down
# The opposites of right is left