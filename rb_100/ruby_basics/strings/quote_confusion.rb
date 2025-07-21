# Modify the following code so that double-quotes are used instead of single-quotes.

puts 'It\'s now 12 o\'clock.'   # It's now 12 o'clock.


## Solution:
puts "It's now 12 o'clock."     # It's now 12 o'clock.



### Experiments:
p 'Hello\nworld'       # "Hello\\nworld"
puts 'Hello\nworld'    # Hello\nworld



### Further exploration:
# String contain single-quotes:
puts %Q(It's now 12 o'clock.)   # It's now 12 o'clock.
puts %q(It's now 12 o'clock.)   # It's now 12 o'clock.

# String contain double-quotes:
puts %Q("Deep Work" by Cal Newport)  # "Deep Work" by Cal Newport
puts %q("Deep Work" by Cal Newport)  # "Deep Work" by Cal Newport
