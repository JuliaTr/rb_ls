original = ["todo", ["buy milk", "call me"]]
p original.object_id   # 60

copy = original.dup
p copy.object_id       # 80

# This only affects the copy (outer structure change)
copy << "new item"

# This affects both arrays (inner object mutation)
copy[1][0] = "buy chocolate milk"

p original  
# ["todo", ["buy chocolate milk", "call me"]]
p copy
# ["todo", ["buy chocolate milk", "call me"], "new item"]

