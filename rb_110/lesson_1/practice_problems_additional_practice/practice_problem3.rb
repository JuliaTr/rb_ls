# Remove people with age 100 and greater.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

result = ages.delete_if { |_,value| value > 100 }

p result   # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}
p ages     # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}



# Solution from assignment:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

result = ages.keep_if { |_, age| age < 100 }

p result     # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}
p ages       # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}



# Experiments:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

result = ages.select! do |_, value|
  value < 100
end

p result      # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}
p ages        # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}
