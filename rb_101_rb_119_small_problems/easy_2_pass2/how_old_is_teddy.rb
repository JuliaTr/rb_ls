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



## Further exploration:
=begin
Modify this program to ask for a name, and then print the age 
for that person. For an extra challenge, use "Teddy" as the 
name if no name is entered.
=end

puts 'Type a name:'
name = gets.chomp.capitalize

def display_age(name='Teddy')
  age = rand(20..200)
  "#{name} is #{age} years old!"
end

puts display_age
puts display_age(name)

=begin
$ ruby how_old_is_teddy.rb
Type a name:
yuliia
Teddy is 168 years old!
Yuliia is 61 years old!
=end
