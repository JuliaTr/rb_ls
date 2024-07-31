### See if "Spot" is present in this hash of people and their age.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages.key?("Spot")            # false

# Bonus Answer:
p ages.include?("Spot")        # false
p ages.member?("Spot")         # false


## Experiments:
p ages.has_key?("Spot")        # false
