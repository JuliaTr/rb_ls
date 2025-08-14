# Make this into an un-nested array.

flintstones = ["Fred", "Wilma"]

flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbels"]

p flintstones 
# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbels"]]

# `Array#flatten` (non-mutating):
p flintstones.flatten
p flintstones

# Output:
# ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbels"]
# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbels"]]


# `Array#flatten!` (mutating):
p flintstones.flatten!
p flintstones

# Output:
# ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbels"]
# ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbels"]
