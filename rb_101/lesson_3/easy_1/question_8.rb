### Create an array containing only two elements: Barney's name and Barney's number.

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 4 }

p flintstones.assoc("Barney")
# => ["Barney", 2]



## Experiments:
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 4 }

barney_only = flintstones.to_a[2]
p barney_only                      
# => ["Barney", 2]

