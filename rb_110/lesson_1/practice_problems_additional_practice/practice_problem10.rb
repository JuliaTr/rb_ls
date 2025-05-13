=begin
Exercise: Modify the hash such that each member of the Munster 
family has an additional "age_group" key that has one of three 
values describing the age group the family member is in (kid, 
adult, or senior). Your solution should produce the hash below:

Example:
{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

Note: a kid is in the age range 0 - 17, an adult is in the 
range 18 - 64 and a senior is aged 65+.
=end

munster = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}


# Solution (without iteration):
munster = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

munster["Herman"]["age_group"] = "adult"
munster["Lily"]["age_group"] = "adult"
munster["Grandpa"]["age_group"] = "senior"
munster["Eddie"]["age_group"] = "kid"
munster["Marilyn"]["age_group"] = "adult"

p munster
# {"Herman"=>{"age"=>32, "gender"=>"male", "age_group"=>"adult"}, 
# "Lily"=>{"age"=>30, "gender"=>"female", "age_group"=>"adult"}, 
# "Grandpa"=>{"age"=>402, "gender"=>"male", "age_group"=>"senior"}, 
# "Eddie"=>{"age"=>10, "gender"=>"male", "age_group"=>"kid"}, 
# "Marilyn"=>{"age"=>23, "gender"=>"female", "age_group"=>"adult"}}



# Solution (with iteration):
# Step 1:
munster = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

munster.each do |key, value|
  p "#{key} #{value}" 
end

# Output:
# "Herman {\"age\"=>32, \"gender\"=>\"male\"}"
# "Lily {\"age\"=>30, \"gender\"=>\"female\"}"
# "Grandpa {\"age\"=>402, \"gender\"=>\"male\"}"
# "Eddie {\"age\"=>10, \"gender\"=>\"male\"}"
# "Marilyn {\"age\"=>23, \"gender\"=>\"female\"}"


# Step 2:
munster = { 
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

munster.each do |key, _| 
  munster[key]["age_group"] = "adult"
end

p munster

# {"Herman"=>{"age"=>32, "gender"=>"male", "age_group"=>"adult"}, 
# "Lily"=>{"age"=>30, "gender"=>"female", "age_group"=>"adult"}, 
# "Grandpa"=>{"age"=>402, "gender"=>"male", "age_group"=>"adult"}, 
# "Eddie"=>{"age"=>10, "gender"=>"male", "age_group"=>"adult"}, 
# "Marilyn"=>{"age"=>23, "gender"=>"female", "age_group"=>"adult"}}


# Step 3:
munster = { 
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

munster.each do |key, _|
  if (0..17).to_a.include?(munster[key]["age"])
    munster[key]["age_group"] = "kid"
  elsif (18..64).to_a.include?(munster[key]["age"])
    munster[key]["age_group"] = "adult"
  else
    munster[key]["age_group"] = "senior"
  end
end

p munster
# {"Herman"=>{"age"=>32, "gender"=>"male", "age_group"=>"adult"}, 
# "Lily"=>{"age"=>30, "gender"=>"female", "age_group"=>"adult"}, 
# "Grandpa"=>{"age"=>402, "gender"=>"male", "age_group"=>"senior"}, 
# "Eddie"=>{"age"=>10, "gender"=>"male", "age_group"=>"kid"}, 
# "Marilyn"=>{"age"=>23, "gender"=>"female", "age_group"=>"adult"}}


# Step 4 (refactoring):
munster = { 
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

munster.each do |key, value|
  if (0..17).to_a.include?(value["age"])
    value["age_group"] = "kid"
  elsif (18..64).to_a.include?(value["age"])
    value["age_group"] = "adult"
  else
    value["age_group"] = "senior"
  end
end

p munster
# {"Herman"=>{"age"=>32, "gender"=>"male", "age_group"=>"adult"}, 
# "Lily"=>{"age"=>30, "gender"=>"female", "age_group"=>"adult"}, 
# "Grandpa"=>{"age"=>402, "gender"=>"male", "age_group"=>"senior"}, 
# "Eddie"=>{"age"=>10, "gender"=>"male", "age_group"=>"kid"}, 
# "Marilyn"=>{"age"=>23, "gender"=>"female", "age_group"=>"adult"}}



# Solution from assignment:
munster = { 
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

munster.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

p munster
# {"Herman"=>{"age"=>32, "gender"=>"male", "age_group"=>"adult"}, 
# "Lily"=>{"age"=>30, "gender"=>"female", "age_group"=>"adult"}, 
# "Grandpa"=>{"age"=>402, "gender"=>"male", "age_group"=>"senior"}, 
# "Eddie"=>{"age"=>10, "gender"=>"male", "age_group"=>"kid"}, 
# "Marilyn"=>{"age"=>23, "gender"=>"female", "age_group"=>"adult"}}
