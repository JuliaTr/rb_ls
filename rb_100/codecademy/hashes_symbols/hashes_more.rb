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
