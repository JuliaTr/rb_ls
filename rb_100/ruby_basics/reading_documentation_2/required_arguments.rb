=begin
Exercise:
How would you use `Array#insert` to insert the numbers `5`, 
`6`, and `7` between the elements with values `'c'` and `'d'`?
=end

a = %w(a b c d e) 

# Solution:
b = a.insert(3, 5, 6, 7)

p b                 # ["a", "b", "c", 5, 6, 7, "d", "e"]
p a                 # ["a", "b", "c", 5, 6, 7, "d", "e"]

p a.object_id       # 60
p b.object_id       # 60
