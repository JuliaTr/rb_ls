=begin
Use `String#slice!` to make the return value `"Few things in 
life are as important as "`. But leave the advice variable as 
`"house training your pet dinosaur."`
=end

advice = "Few things in life are as important as house training your pet dinosaur."

# `String#slice!` (mutating):
p advice.slice!("Few things in life are as important as ")
# "Few things in life are as important as "
p advice
# "house training your pet dinosaur."


## Possible solution:
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.index('house')   # 39  (to test)
# The indice of `h` is `39`.

p advice.index('h')       # 5   (to test)
# The indice of the first character `h` is `5`.

p advice.slice!(0, advice.index('house'))
# "Few things in life are as important as "
p advice
# "Few things in life are as important as "


## Further exploration:
advice = "Few things in life are as important as house training your pet dinosaur."

# `String#slice` (non-mutating):
p advice.slice("Few things in life are as important as ")
# "Few things in life are as important as "
p advice
# "Few things in life are as important as house training your pet dinosaur."
