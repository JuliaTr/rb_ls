munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)
# => [{"age"=>74, "gender"=>"other"}, {"age"=>72, "gender"=>"other"}, {"age"=>444, "gender"=>"other"}, {"age"=>52, "gender"=>"other"}, {"age"=>65, "gender"=>"other"}]
munsters.object_id
# => {"Herman"=>{"age"=>74, "gender"=>"other"}, "Lily"=>{"age"=>72, "gender"=>"other"}, 
# "Grandpa"=>{"age"=>444, "gender"=>"other"}, "Eddie"=>{"age"=>52, "gender"=>"other"}, "Marilyn"=>{"age"=>65, "gender"=>"other"}}


# `family_member["age"] += 42` and `family_member["gender"] = "other"`, on lines 11 through 12, illustrates a reassignment.
# An `object_id` of each argument is passed to the method.
# The method uses these object_id in the variables within its local scope. 
# These variables are parameters of the method.
# The `demo_hash` parameter points to the `munsters` hash.
# The existed hash is used, without creaing a new one.
# The `munsters` hash is altered inside of the method.