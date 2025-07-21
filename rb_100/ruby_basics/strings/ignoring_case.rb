=begin
Using the following code, compare the value of name with the 
string `'RoGeR'` while ignoring the case of both strings. 
Print `true` if the values are the same; print `false` if 
they aren't. Then, perform the same case-insensitive 
comparison, except compare the value of `name` with the 
string `'DAVE'` instead of `'RoGeR'`.
=end

name = 'Roger'


## Soluion:
name = 'Roger'
p name.casecmp('RoGer')   # 0 (equal)
p name.casecmp('DAVE')    # 1 (`'DAVE'` is smaller)

puts(name.casecmp('RoGer') == 0 ? true : false)   # true
puts(name.casecmp('DAVE') != 0 ? false : true)    # false



## Possible solution:
name = 'Roger'
puts name.casecmp('RoGer') == 0    # true
puts name.casecmp('DAVE') == 0     # false
