=begin
See if "Spot" is present.

Bonus: What are two other hash methods that would work just as well for this solution?
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Option 1:
p ages.include?("Spot")       # false

# Option 2:
p ages.keys.include?("Spot")  # false

# Option 3:
p ages.key?("Spot")           # false

# Option 4:
p ages.member?("Spot")        # false



### Experiments:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
p ages.include?("Spot")   # false
p ages.include?("Lily")   # true
