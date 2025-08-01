=begin
Build a program that displays when the user will retire and 
how many years she has to work till retirement.

Use the Time class from the Ruby core library.

Example:
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
=end

print 'What is your age? '
age = gets.to_i

print 'At what age would you like to retire? '
age_to_retire = gets.to_i

number_of_years_to_work = age_to_retire - age

time = Time.new
year_now = time.year
year_to_retire = year_now + number_of_years_to_work

puts
puts "It's #{year_now}. You will retire in #{year_to_retire}."
puts "You have only #{number_of_years_to_work} years of work to go!"

=begin
$ ruby when_will_i_retire.rb
What is your age? 35
At what age would you like to retire? 70

It's 2025. You will retire in 2060.
You have only 35 years of work to go!
=end