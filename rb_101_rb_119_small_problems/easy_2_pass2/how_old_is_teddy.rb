=begin
Build a program that randomly generates and prints Teddy's 
age. To get the age, you should generate a random number 
between 20 and 200.
=end

age = rand(20..200)
puts "Teddy is #{age} years old!"

=begin
$ ruby how_old_is_teddy.rb
Teddy is 121 years old!
$ ruby how_old_is_teddy.rb
Teddy is 80 years old!
$ ruby how_old_is_teddy.rb
Teddy is 94 years old!
=end
