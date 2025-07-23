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
