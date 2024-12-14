print "Thtring, pleathe! "
user_input = gets.chomp
user_input.downcase!

if user_input.include?("s")
  user_input.gsub!(/s/, "th")
else
  puts "There's no 's' in the input."
end

puts "Your string is '#{user_input}'."

=begin
$ ruby thith.rb
Thtring, pleathe! summer
Your string is 'thummer'.
$ ruby thith.rb
Thtring, pleathe! uptown
There's no 's' in the input.
Your string is 'uptown'.
=end



# Experiments:
print "Thtring, pleathe! "
user_input = gets.chomp
p user_input.downcase!
p user_input

=begin
$ ruby thith.rb
Thtring, pleathe! summer
nil
"summer"
$ ruby thith.rb
Thtring, pleathe! Summer
"summer"
"summer"
=end


print "Thtring, pleathe! "
user_input = gets.chomp.downcase!
p user_input

=begin
$ ruby thith.rb
Thtring, pleathe! summer
nil
$ ruby thith.rb
Thtring, pleathe! Summer
"summer"
=end
