=begin
Practice Problem 5
Determine the total age of just the male members of the family.
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

array_of_age = []

munsters.each do |sub_hash|
  if sub_hash[1]["gender"] == 'male'
    array_of_age << sub_hash[1]["age"]
  end
end

p array_of_age             # [32, 402, 10]

p array_of_age.inject(:+)  # 444



## Solution from the assignment:
total_male_age = 0
munsters.each_value |details|
  total_male_age += details["age"] if details["gender"] == "male"
end

p total_male_age
