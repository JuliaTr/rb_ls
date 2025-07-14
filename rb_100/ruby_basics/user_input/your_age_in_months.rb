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



## Further exploration:
# What happens if enter a non-numeric value for the age?
puts '>> What is your age in years?'
answer = gets.chomp.to_i
age_in_months = answer * 12
puts "You are #{age_in_months} months old."

=begin
$ ruby your_age_in_months.rb
>> What is your age in years?
u
You are 0 months old.
=end


puts '>> What is your age in years?'
age_in_years = gets
age_in_months = 12 * age_in_years.to_i
puts "You are #{age_in_months} months old."

=begin
$ ruby your_age_in_months.rb
>> What is your age in years?
u
You are 0 months old.
=end


# Create a program to ask user to insert a valid input.
def valid_integer?(input)
  input.to_i if input.to_i.to_s == input
end

loop do
  puts '>> What is your age in years?'
  age_in_years = gets.chomp
  checked_input_integer = valid_integer?(age_in_years)

  if checked_input_integer
    age_in_months = 12 * checked_input_integer
    puts ">> You are #{age_in_months} months old."
    break
  end

  puts ">> Invalid input. Try again"
end

=begin
$ ruby your_age_in_months.rb
>> What is your age in years?
u
>> Invalid input. Try again
>> What is your age in years?
10
>> You are 120 months old.
=end
