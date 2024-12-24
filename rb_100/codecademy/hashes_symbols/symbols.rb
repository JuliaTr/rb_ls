my_first_symbol = :name
puts my_first_symbol    # name



# Experiments:
puts "name".object_id     # 60
puts "name".object_id     # 80

puts :name.object_id      # 72028
puts :name.object_id      # 72028



# Exercise:
symbol_hash = {
  :one => 1,
  :two => 2,
  :three => 3
}

puts symbol_hash[:two]   # 2
