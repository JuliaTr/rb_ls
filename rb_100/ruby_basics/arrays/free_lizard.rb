=begin
Remove `'lizard'` from my_pets then print the value of 
`my_pets`.

Expected output: I have a pet fish!
=end

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

puts "I have a pet #{my_pets[0]}!"
# I have a pet fish!
