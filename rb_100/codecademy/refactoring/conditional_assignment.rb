favorite_language = nil
p favorite_language

favorite_language ||= 'Ruby'
puts favorite_language

favorite_language ||= 'Python'
puts favorite_language

favorite_language = 'Python'
puts favorite_language

# Output:
# nil
# Ruby
# Ruby
# Python



# Exercise:
favorite_animal = 'cat'
p favorite_animal   # "cat"

favorite_animal ||= 'dog'
p favorite_animal   # "cat"

favorite_animal = false
p favorite_animal   # false

favorite_animal ||= 'dog'
p favorite_animal   # "dog"

favorite_animal = 'bird'
p favorite_animal   # "bird"
