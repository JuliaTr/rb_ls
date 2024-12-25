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
