# What is the result of the last line in the code below?
greetings = { a: 'hi' }
informal_greeting = greetings[:a]  # hi
informal_greeting << ' there'

puts informal_greeting   # hi there
puts greetings           # {:a=>"hi there"}

=begin
The `informal_greeting` references an original object. The
original object was modified by `informal_greeting << ' there'`.
=end



## Experiments:
# The original object isn't modified: 
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting = informal_greeting + ' there'

puts informal_greeting   # hi there
puts greetings           # {:a=>"hi"}



# The original object isn't modified:
greetings = { a: 'hi' }
informal_greeting = greetings[:a].clone
informal_greeting << ' there'

puts informal_greeting   # hi there
puts greetings           # {:a=>"hi"}
