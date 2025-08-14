# Create an array containing only two elements: Barney's name 
# and Barney's number.

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2,
                "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

selecterd_pair = flintstones.select { |k, _| k == "Barney" }
selecterd_pair_to_array = selecterd_pair.to_a.flatten

p selecterd_pair_to_array   # ["Barney", 2]


# Concise version:
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2,
                "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones.select { |k, _| k == "Barney" }.to_a.flatten
# ["Barney", 2]



## Possible solution:
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2,
                "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
p flintstones.assoc("Barney")
# ["Barney", 2]
p flintstones
# {"Fred"=>0, "Wilma"=>1, "Barney"=>2, "Betty"=>3, "BamBam"=>4, "Pebbles"=>5}



### Experiments:
h = { 'a' => 0, 'b' => 1 }
p h.assoc("b")   # ["b", 1]
p h.assoc("c")   # nil
