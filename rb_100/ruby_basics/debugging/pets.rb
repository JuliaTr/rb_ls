=begin
Magdalena wants to add her new dog, Bowser, to the `pets` hash. 
After doing so, she realizes that her dogs Sparky and Fido 
have been mistakenly removed. Help Magdalena fix her code so 
that all three of her dogs' names will be associated with 
the key `:dog` in the `pets` hash.
=end

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] = 'bowser'
p pets  # {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}



## Bug fix:
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog][2] = 'bowser'
p pets  
# {:cat=>"fluffy", :dog=>["sparky", "fido", "bowser"], :fish=>"oscar"}



### Experiments:

## Possible solution (`Array#push`):
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog].push('bowser')
p pets
# {:cat=>"fluffy", :dog=>["sparky", "fido", "bowser"], :fish=>"oscar"}


# `Array#<<`:
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] << 'bowser'
p pets
# {:cat=>"fluffy", :dog=>["sparky", "fido", "bowser"], :fish=>"oscar"}


# `Array#append`:
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog].append('bowser')
p pets 
# {:cat=>"fluffy", :dog=>["sparky", "fido", "bowser"], :fish=>"oscar"}


# `+` (don't mutate the original object):
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

p pets[:dog] + ['bowser']  # ["sparky", "fido", "bowser"]
p pets
# {:cat=>"fluffy", :dog=>["sparky", "fido"], :fish=>"oscar"}


# `+`, `[]=`:
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] = pets[:dog] + ['bowser']  # mutates the original object
p pets
# {:cat=>"fluffy", :dog=>["sparky", "fido", "bowser"], :fish=>"oscar"}
