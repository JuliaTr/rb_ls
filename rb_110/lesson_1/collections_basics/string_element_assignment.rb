str = "joe's favorite color is blue"
p str.object_id       # 60

str[0] = 'J'
p str[0]              # "J"

p str                 # "Joe's favorite color is blue"
p str.object_id       # 60



str = "joe's favorite color is blue"

str[0] = 'J'
str[6] = 'F'
str[15] = 'C'
str[21] = 'I'
str[24] = 'B'

p str           # "Joe's Favorite Color Is Blue"
