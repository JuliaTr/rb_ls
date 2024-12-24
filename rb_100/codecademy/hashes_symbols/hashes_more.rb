# Exercise:
matz = {
  "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}

# Iterate over the hash
matz.each do |_, value|
  puts value
end

# Output:
# Yukihiro
# Matsumoto
# 47
# Japanese
# Matz



# Exercise:
creatures = {
  "weasels" => 0,
  "puppies" => 6,
  "platypuses" => 3,
  "canaries" => 1,
  "Heffalumps" => 7,
  "Tiggers" => 1
}

p creatures["dogs"]  # nil



# Exercise:
no_nil_hash = Hash.new("Yuliia")
p no_nil_hash   # {}
