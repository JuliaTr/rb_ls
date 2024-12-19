my_2d_array = [[1, 2, 3], [4, 5, 6]]
my_2d_array.each { |array_inside| puts "#{array_inside}" }

# Output:
# [1, 2, 3]
# [4, 5, 6]


# Exercise:
languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
languages.each { |language| puts language }

# Output:
# HTML
# CSS
# JavaScript
# Python
# Ruby



=begin
Exercise:

Puts out every element inside the sub-arrays inside `s`. 
Iterate through `each` element in the `s` array. Call the 
elements `sub_array`. Then iterate through `each` `sub_array` 
and `puts` out their items.
=end
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do |sub_array|
  sub_array.each do |item|
    puts item
  end
end

# Output:
# ham
# swiss
# turkey
# cheddar
# roast beef
# gruyere
