=begin
Practice Problem 1:
Turn this array into a hash where the names are the keys and 
the values are the positions in the array.
=end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

h = {}
flintstones.each_with_index do |element, index|
  h[element] = index
end

p h 
# {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}




=begin
Practice Problem 2:
Add up all of the ages from the Munster family hash
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
        "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_ages = 0
ages.each { |_, age| total_ages = total_ages + age }
p total_ages              # 6174


## Alternatives:
# Option 1:
p ages.values.sum         # 6174

# Option 2:
p ages.values.inject(:+)  # 6174




=begin
Practice Problem 3:
Remove people with age 100 and greater.
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

result = ages.keep_if { |_, value| value < 100 }
p result   # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}
p ages     # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}


## Alternatives:
# Option 1 (keep the same object unchanged):
result = ages.select { |_, value| value < 100 }
p result # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}
p ages   # {"Herman"=>32, "Lily"=>30, "Grandpa"=>402, "Eddie"=>10}

# Option 2:
result = ages.reject { |_, value| value >= 100 }
p result     # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}
p ages       # {"Herman"=>32, "Lily"=>30, "Eddie"=>10}




=begin
Practice Problem 4:
Pick out the minimum age from our current Munster family hash
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, 
        "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.min  # 10




=begin
Find the index of the first name that starts with "Be"
=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index { |name| name[0, 2] == "Be" }


## Alternattive:
index = nil
flintstones.each_with_index do |element, idx|
  if element[0, 2] == "Be"
    index = idx
  end
end
p index # 3



