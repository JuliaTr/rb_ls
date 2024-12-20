# pets = Hash.new
# p pets

# # Add to hash:
# pets["dog"] = "Lada"
# pets["cat"] = "Timon"

# # Acess hash values:
# puts pets["dog"]
# puts pets["cat"]

# # Output:
# # {}
# # Lada
# # Timon



# # Exercise:
# secret_idetities = {
#   "The Batman" => "Bruce Wayne",
#   "Superman" => "Clark Kent",
#   "Wonder Woman" => "Diana Prince",
#   "Freakazoid" => "Dexter Douglas"
# }

# secret_idetities.each do |character, name|
#   puts "#{character}: #{name}"
# end

# # Output:
# # The Batman: Bruce Wayne
# # Superman: Clark Kent
# # Wonder Woman: Diana Prince
# # Freakazoid: Dexter Douglas



# # Exercise:
# lunch_order = {
#   "Ryan" => "wonton soup",
#   "Eric" => "hamburger",
#   "Jimmy" => "sandwich",
#   "Sasha" => "salad",
#   "Cole" => "taco"
# }

# lunch_order.each do |name, order|
#   puts order
# end

# # Output:
# # wonton soup
# # hamburger
# # sandwich
# # salad
# # taco



# # Exercise:
# hash = Hash.new("nothing")
# p hash
# p hash["hi"]
# p hash["hi"] = 1
# p hash

# # Output:
# # {}
# # "nothing"
# # 1
# # {"hi"=>1}



# # Exercise:
# colors = { "pink" => 1, "purple" => 2 }
# puts colors["purple"]
# colors["purple"] += 1    # colors["purple"] = colors["purple"] + 1
# puts colors["purple"]

# # Output:
# # 2
# # 3



# Exercise:
colors = {
  "pink" => 4,
  "purple" => 2,
  "yellow" => 3
}

colors.each do |color, count|
  puts "#{color} #{count}"
end

colors = colors.sort_by { |_, count| count }
p colors

colors.reverse!
p colors

# Output: 
# pink 4
# purple 2
# yellow 3
# [["purple", 2], ["yellow", 3], ["pink", 4]]
# [["pink", 4], ["yellow", 3], ["purple", 2]]
