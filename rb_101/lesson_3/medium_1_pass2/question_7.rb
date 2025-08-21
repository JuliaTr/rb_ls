# Did the family's data get changed? Why or why not?

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

# p munsters.values
# # [{"age"=>32, "gender"=>"male"}, {"age"=>30, "gender"=>"female"}, 
# # {"age"=>402, "gender"=>"male"}, {"age"=>10, "gender"=>"male"}, 
# # {"age"=>23, "gender"=>"female"}]

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

p mess_with_demographics(munsters)
# [{"age"=>74, "gender"=>"other"}, {"age"=>72, "gender"=>"other"}, 
# {"age"=>444, "gender"=>"other"}, {"age"=>52, "gender"=>"other"}, 
# {"age"=>65, "gender"=>"other"}]

p munsters
# {"Herman"=>{"age"=>74, "gender"=>"other"}, 
# "Lily"=>{"age"=>72, "gender"=>"other"}, 
# "Grandpa"=>{"age"=>444, "gender"=>"other"}, 
# "Eddie"=>{"age"=>52, "gender"=>"other"}, 
# "Marilyn"=>{"age"=>65, "gender"=>"other"}}

=begin
The parameter `demo_hash` has a copy of the reference of the 
object referenced by `munster` as an argument, when 
`mess_with_demographics(munsters)` is called. This is Ruby's
behaviour as "pass-by-value-of-the-reference".

The call to `demo_hash.value` returns a new array with a reference
to the same values as values in `munsters` hash. 

The `each` method returns an original object (here 
`demo_hash.value` return value). However, 
mutating methods (`#+=` (line 17), `#[]=` (line 18)), 
are invoked on each element inside the block, this object 
is mutated (`"age"` and "gender"). 

That's why the original hash `munsters` was mutated.
=end
