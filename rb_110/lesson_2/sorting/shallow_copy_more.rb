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




arr1 = ["a", "b", "c"]
p arr1.object_id     # 60

arr2 = arr1.dup   # shallow copy
p arr2.object_id     # 80

# The structure of the outer collection is modified:
arr2 << "d"       # doesn't affect arr1
arr2.delete_at(0) # doesn't affect arr1

p arr1              # ["a", "b", "c"]
p arr2              # ["b", "c", "d"]

# Inner elements (not modified):
arr2[1].upcase  # not destructive; creates a new object; not assigned to a variable

p arr1              # ["a", "b", "c"]
p arr2              # ["b", "c", "d"]

# Inner elements (modified):
arr2[0].upcase!   # affects both arrays

p arr1              # ["a", "B", "c"]
p arr2              # ["B", "c", "d"]
