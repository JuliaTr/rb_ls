str = 'Practice'

arr = str.chars
p arr             # ["P", "r", "a", "c", "t", "i", "c", "e"]

p arr.join        # "Practice"



str = 'How do you get to Carnegie Hall?'

arr = str.split
p arr             # ["How", "do", "you", "get", "to", "Carnegie", "Hall?"]

p arr.join(' ')   # "How do you get to Carnegie Hall?"
