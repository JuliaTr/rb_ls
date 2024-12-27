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
