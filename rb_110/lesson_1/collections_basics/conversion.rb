### String, array
str = 'Practice'

arr = str.chars
p arr             # ["P", "r", "a", "c", "t", "i", "c", "e"]

p arr.join        # "Practice"



str = 'How do you get to Carnegie Hall?'

arr = str.split
p arr             # ["How", "do", "you", "get", "to", "Carnegie", "Hall?"]

p arr.join(' ')   # "How do you get to Carnegie Hall?"




### Hash, array
hsh = { sky: "blue", grass: "green" }
p hsh.to_a      # [[:sky, "blue"], [:grass, "green"]]


arr = [[:name, 'Joe'], [:age, 10], [:favorite_color, 'blue']]
p arr.to_h      # {:name=>"Joe", :age=>10, :favorite_color=>"blue"}
