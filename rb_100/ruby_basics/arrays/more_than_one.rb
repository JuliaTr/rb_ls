=begin
Write some code that selects `'fish'` and `'lizard'` from the 
`pets` array - select the two items at the same time. Assign 
the return value to a variable named `my_pets`, then print 
the contents of `my_pets` as a single string, e.g.:

I have a pet fish and a pet lizard!
=end

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = [pets[2], pets[3]]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"



## Possible solution:
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"
# I have a pet fish and a pet lizard!
