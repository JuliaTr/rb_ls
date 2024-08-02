a = 42
b = 42
c = a

puts a.object_id        # 85
puts b.object_id        # 85
puts c.object_id        # 85

# Integers are immutable. So, an Integer objects' values cannot be mutated.
# All local variables `a`, `b` and `c` reference the same immutable integer `42` object.
