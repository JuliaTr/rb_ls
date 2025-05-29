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
