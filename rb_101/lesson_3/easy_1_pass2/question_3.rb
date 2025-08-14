# Replace the word "important" with "urgent" in this string:


## Solution:
# Option 1:
# `String#gsub` (non-mutatng):
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.gsub('important', 'urgent')
p advice

# Output:
# "Few things in life are as urgent as house training your pet dinosaur."
# "Few things in life are as important as house training your pet dinosaur."


# Option 2:
# `String#gsub!` (mutatng):
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.gsub!('important', 'urgent')
p advice
# "Few things in life are as urgent as house training your pet dinosaur."
# "Few things in life are as urgent as house training your pet dinosaur."
