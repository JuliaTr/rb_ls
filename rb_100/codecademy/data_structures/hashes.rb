pets = Hash.new
p pets

# Add to hash:
pets["dog"] = "Lada"
pets["cat"] = "Timon"

# Acess hash values:
puts pets["dog"]
puts pets["cat"]

# Output:
# {}
# Lada
# Timon



# Exercise:
secret_idetities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

secret_idetities.each do |character, name|
  puts "#{character}: #{name}"
end

# Output:
# The Batman: Bruce Wayne
# Superman: Clark Kent
# Wonder Woman: Diana Prince
# Freakazoid: Dexter Douglas



# Exercise:
lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each do |name, order|
  puts order
end

# Output:
# wonton soup
# hamburger
# sandwich
# salad
# taco
