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



# Exercise:
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Convert strings into symbols, using the `to_sym`method:
symbols = []
strings.each do |s|
  symbols.push(s.to_sym)
end

p symbols  # [:HTML, :CSS, :JavaScript, :Python, :Ruby]



# Exercise:
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Convert strings into symbols, using the `intern` method:
symbols = []
strings.each do |s|
  symbols.push(s.intern)
end

p symbols   # [:HTML, :CSS, :JavaScript, :Python, :Ruby]



# Exercise:
movies = {
  inside_out_2: "for kids and adults",
  paw_patrol: "for kids"
}

puts movies

movies.each { |key, value| puts "'#{key.capitalize}': #{value}" }

# Output:
# {:inside_out_2=>"for kids and adults", :paw_patrol=>"for kids"}
# 'Inside_out_2': for kids and adults
# 'Paw_patrol': for kids



# Exercise:
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_down: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

good_movies = movie_ratings.select do |_, value|
  value > 3
end

puts good_movies
# {:primer=>3.5, :the_matrix=>5, :truman_show=>4, :skyfall=>4, :lion_king=>3.5}
