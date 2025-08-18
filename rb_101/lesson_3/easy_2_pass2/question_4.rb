# See if the name "dino" appears in the string:
advice = "Few things in life are as important as house training your pet dinosaur."

p advice.include?('dino')    # true

## Possible solution:
p advice.match?('dino')      # true


### Experiments:

# Expected `"Few things"`:
p advice.match?('f.s')   # false
