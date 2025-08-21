a = 42
b = 42
c = a

puts a.object_id    # 85
puts b.object_id    # 85
puts c.object_id    # 85



## Experiments:
a = true
b = true
c = a

puts a.object_id    # 20
puts b.object_id    # 20
puts c.object_id    # 20



a = false
b = false
c = a

puts a.object_id    # 0
puts b.object_id    # 0
puts c.object_id    # 0



a = nil
b = nil
c = a

puts a.object_id    # 4
puts b.object_id    # 4
puts c.object_id    # 4
