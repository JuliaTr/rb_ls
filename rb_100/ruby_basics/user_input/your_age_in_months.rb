=begin
Write a program that asks the user for their age in years, and 
then converts that age to months.

Examples:
$ ruby age.rb
>> What is your age in years?
35
You are 420 months old.
=end

puts '>> What is your age in years?'
answer = gets.chomp.to_i
age_in_months = answer * 12
puts "You are #{age_in_months} months old."

=begin
$ ruby your_age_in_months.rb
>> What is your age in years?
35
You are 420 months old.

$ ruby your_age_in_months.rb
>> What is your age in years?
7
You are 84 months old.
=end



### Possible solution:
puts '>> What is your age in years?'
age_in_years = gets
age_in_months = 12 * age_in_years.to_i
puts "You are #{age_in_months} months old."

=begin
$ ruby your_age_in_months.rb
>> What is your age in years?
35
You are 420 months old.
=end
