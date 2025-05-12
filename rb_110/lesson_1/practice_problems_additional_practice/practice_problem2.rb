# Add up all of the ages from the Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
        "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

sum_values = ages.map { |_, value| value }.sum
p sum_values   # 6174




# Solution from assignment:
# Option 1:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
        "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
total_ages = 0
ages.each { |_, age| total_ages += age }
p total_ages    # 6174



# Option 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
        "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
result = ages.values.inject(:+)
p result          # 6174
