def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Yuliia") { |n| puts "My name is #{n}." }

# Output:
# In the method! Let's yield.
# My name is Kim.
# In between the yields!
# My name is Yuliia.
# Block complete! Back in the method.



# Exercise:
=begin
Define your own method, `double`, that accepts a single 
parameter and yields to a block. Then call it with a block 
that multiplies the number parameter by 2. You can double 
any number you like! `puts` the result in order to see your 
yield in action!
=end
def double(number)
  yield(number)
end

double(6) { |n| puts n * 2 }

# Output: 12
