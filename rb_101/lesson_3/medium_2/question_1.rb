a = "forty two"
b = "forty two"
c = a

puts a.object_id        # 60
puts b.object_id        # 80
puts c.object_id        # 60

# `a` and `b` reference different objects.
# These two objects have the same value `"forty two"`, but they're still different objects.

# `a` and `c` reference the same object.
# An initialized `c` references the object, referenced by `a`.