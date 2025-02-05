### String mutation

# Example 1:
# String character assignmennt (mutation):
str = 'Ruby'
p str.object_id     # 60

str[0] = 'J'

p str               # Juby
p str.object_id     # 60



# Example 2:
# Concatenation (mutation):
str = 'Ruby'
p str.object_id      # 60

str << 'ava'

p str                # Rubyava
p str.object_id      # 60 


str = 'Ruby'
str[1] = str[1] * 2
p str               # "Ruuby"


str = 'Ruby'
str[1] * 2    # the return value isn't assigned
p str                # Ruby (no changes)
