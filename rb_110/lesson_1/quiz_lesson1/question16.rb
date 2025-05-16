pets = ['cat', 'parrot', 'dog', 'fish']
result = pets.map do |pet|
  pet.size == 3
end

p result # [true, false, true, false]

=begin
`map` takes the return value of the block and includes
it on each iteration for each element into a new array, 
which it its return value.
=end
