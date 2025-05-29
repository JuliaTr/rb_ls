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
