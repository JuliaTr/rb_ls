### Shorten the sentence:
## `String#slice!`
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0, advice.index('house'))
# "Few things in life are as important as "
p advice
# "house training your pet dinosaur."

advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!("Few things in life are as important as ")
# "Few things in life are as important as "
p advice
# "house training your pet dinosaur."


## `String#slice`
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice("Few things in life are as important as ")
# "Few things in life are as important as "
p advice
# "Few things in life are as important as house training your pet dinosaur."

# The `String#slice` is a non-destructive method. Returns a new string with the text `"Few things in life are as important as "`.
# However, the `advice` variable remains the same, pointting to the original string `"Few things in life are as important as house training your pet dinosaur."` 
