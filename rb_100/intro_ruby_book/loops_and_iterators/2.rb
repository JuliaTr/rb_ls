=begin
Exercise:
Write a while loop that takes input from the user, performs an 
action, and only stops when the user types "STOP". Each loop 
can get info from the user.
=end

# Solution:
x = ''

while x != "Stop"
  puts "Hi! How are you doing?"
  input = gets.chomp
  puts "Want me to ask again? (Type 'Stop' to exit)"
  x = gets.chomp
end

=begin
$ ruby 2.rb
Hi! How are you doing?
okay
Want me to ask again? (Type 'Stop' to exit)
n
Hi! How are you doing?
okay
Want me to ask again? (Type 'Stop' to exit)
y
Hi! How are you doing?
great
Want me to ask again? (Type 'Stop' to exit)
Stop
=end

=begin
On line 1, a local variable `x` is initialized and references an
empty string `''`. On lines 3-8, there's a `while` loop. 

The `while` loop the same as the `for` and the `until` loops are not 
methods and don't have thier own variable scope. The variable
initialized, reassigned inside the loops are in the same scope as the
variable outside of the `while` loop. So, they can be accessible 
outside of the `while` loop.
=end
