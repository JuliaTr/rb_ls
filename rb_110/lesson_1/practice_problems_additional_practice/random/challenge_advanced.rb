=begin
Exercise (​advanced)​: Given the array of names below, create a 
hash where the keys are the lengths of the names and the values 
are arrays containing the names of that length:
=end
names = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Example: 
# {4=>["Fred"], 6=>["Barney", "BamBam"], 
# 5=>["Wilma", "Betty"], 7=>[Pebbles]}

=begin
Notes:

Word length:
"Fred"     - 4
"Barney"   - 6
"Wilma"    - 5
"Betty"    - 5
"BamBam"   - 6
"Pebbles"  - 7
=end

# Step 1:
h = {}
value = []

names.each do |word|
  word_length = word.length
  h[word_length] = (value << word)
end

p h
# Output
# {4=>["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"], 
# 6=>["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"], 
# 5=>["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"], 
# 7=>["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]}


# # Step 2:
# h.each do |key, value|
#   new_value = value.select do |word|
#     word.length == key
#   end

#   p new_value
# end

# p h

# # Output:
# # ["Fred"]
# # ["Barney", "BamBam"]
# # ["Wilma", "Betty"]
# # ["Pebbles"]

# # {4=>["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"], 
# # 6=>["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"], 
# # 5=>["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"], 
# # 7=>["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]}


# Step 2 improved:
new_hash = {}

h.each do |key, value|
  new_value = value.select do |word|
    word.length == key
  end

  new_hash[key] = new_value
end

p new_hash
# Output:
# {4=>["Fred"], 6=>["Barney", "BamBam"], 5=>["Wilma", "Betty"], 
# 7=>["Pebbles"]}
