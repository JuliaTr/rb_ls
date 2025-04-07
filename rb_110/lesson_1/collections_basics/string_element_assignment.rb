str = "joe's favorite color is blue"
p str.object_id       # 60

str[0] = 'J'
p str[0]              # "J"

p str                 # "Joe's favorite color is blue"
p str.object_id       # 60
