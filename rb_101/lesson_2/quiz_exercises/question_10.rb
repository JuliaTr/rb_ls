user_input = gets

loop do
  name = user_input  # local variable is initialized inside the loop
  break
end

if user_input
  puts "Hello " + name
end

=begin
$ ruby question_10.rb
hi
question_10.rb:9:in `<main>': undefined local variable or method `name' for main:Object (NameError)

  puts "Hello " + name
                  ^^^^
=end



## Bug fix:
user_input = gets
name = nil

loop do
  name = user_input
  break
end

if user_input
  puts "Hello " + name
end

=begin
$ ruby question_10.rb
Yuliia
Hello Yuliia
=end
