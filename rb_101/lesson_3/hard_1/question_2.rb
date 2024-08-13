# What is the output of the last line of the code?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting
# hi there
puts greetings
# Output: {:a=>"hi there"}

=begin
On line 3, `greetings`points to a Hash object '{ a: 'hi' }'.
On line 4, 'informal_greeting' points on the the same object as `greetings`.
Because `greetings[:a]` return value associated with the `[:a]`.
`{ a: 'hi' }` has only one key `a` with a value `'hi``.

On line 5, `' there`` string is passed to the `String#<<` method called on `informal_greeting`.
As hash is a mutable object and `informal_greeting` points to the same object as `greetings`, 
so passing the Hash object referneced by `greetings` as an argument to the `#puts` method invocation will output {:a=>"hi there"} to the console. 
=end



## Experiments:

greetings = { a: 'hi' }
informal_greeting = greetings[:a].clone
informal_greeting << ' there'

puts informal_greeting
# hi there
puts greetings
# {:a=>"hi"}

=begin
irb(main):005:0> greetings = { a: 'hi' }
=> {:a=>"hi"}
irb(main):006:0> informal_greeting = greetings[:a].clone
=> "hi"
irb(main):007:0> informal_greeting << ' there'
=> "hi there"
irb(main):008:0> informal_greeting
=> "hi there"
irb(main):009:0> greetings
=> {:a=>"hi"}
=end



greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting = informal_greeting + ' there'

puts informal_greeting
# hi there
puts greetings
# {:a=>"hi"}


