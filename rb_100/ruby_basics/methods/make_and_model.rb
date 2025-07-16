=begin
Using the following code, write a method called `car` that 
takes two arguments and prints a string containing the values 
of both arguments.

car('Toyota', 'Corolla')

Expected output:
Toyota Corolla
=end

def car(make, model)
  puts "#{make} #{model}"
end

p car('Toyota', 'Corolla')  # nil

# Output: 
# Toyota Corolla
# nil



## Furher exploration:
# Remove the `#puts` call from the car method. Modify your 
# program so it still prints the result.
def car(make, model)
  "#{make} #{model}"
end

puts car('Toyota', 'Corolla')
p car('Toyota', 'Corolla')

# Output:
# Toyota Corolla
# "Toyota Corolla"

=begin
The `puts` method (line 13) always returns `nil`. The method definition 
returns the last and the only line executed (lines 16 ('nil'), 
32 (`"Toyota Corolla"`)). That's why the return values of `car` 
method is different.
=end
