print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "What's your city? "
city = gets.chomp
city.capitalize!

print "What's your state/province? (e.g. NY) "
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you're from #{city} #{state}."
=begin
Output:
$ ruby putting_the_form_in_formatter.rb
What's your first name? yuliia
What's your last name? tryhubniak
What's your city? winnipeg
What's your state/province? (e.g. NY) mb
Your name is Yuliia Tryhubniak and you're from Winnipeg MB.
=end


## Experiments:
# To chain `gets.chomp.capitalize!` and `gets.chomp.upcase!`.
print "What's your first name? "
first_name = gets.chomp.capitalize!

print "What's your last name? "
last_name = gets.chomp.capitalize!

print "What's your city? "
city = gets.chomp.capitalize!

print "What's your state/province? (e.g NY) "
state = gets.chomp.upcase!

puts "Your name is #{first_name} #{last_name} and you're from #{city} #{state}."
=begin
$ ruby putting_the_form_in_formatter.rb
What's your first name? yuliia
What's your last name? tryhubniak
What's your city? winnipeg
What's your state/province? (e.g NY) mb
Your name is Yuliia Tryhubniak and you're from Winnipeg MB.
=end