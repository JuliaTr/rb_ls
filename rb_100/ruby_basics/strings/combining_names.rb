=begin
Using the following code, combine the two names together to 
form a full name and assign that value to a variable named 
`full_name`. Then, print the value of `full_name`.
=end

first_name = 'John'
last_name = 'Doe'

# Option 1:
full_name = first_name + ' ' + last_name
puts full_name   # John Doe

# Option 2:
full_name = "#{first_name} #{last_name}"
puts full_name   # John Doe




## Experiment:
first_name = 'John'
last_name = 'Doe'

# Without assigning a variable to the return value of interpolation:
puts "#{first_name} #{last_name}"   # John Doe

# `#<<` (mutates the caller):
first_name << last_name
puts first_name   # JohnDoe (`first_name` was mutated)



first_name = 'John'
last_name = 'Doe'

# `#+`, `#<<`:
first_name << ' ' + last_name
puts first_name   # John Doe



first_name = 'John'
last_name = 'Doe'

# We don't mutate the original objects:
full_name = ''
full_name << first_name << ' ' << last_name

puts first_name # John
puts last_name  # Doe
puts full_name  # John Doe
