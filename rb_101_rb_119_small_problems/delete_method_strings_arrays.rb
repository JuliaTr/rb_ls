## `String#delete` (non-destructive):
p 'abcabc'.delete('a') # "bcbc"

str = 'abcabc'
p str.delete('a')  # "bcbc"  (returns a new obj with deleted chars)
p str              # "abcabc"

# `str` is reassigned:
str = str.delete('a') # "bcbc"
p str



## `Array#delete` (destructive)
arr = [1, 2, 3, 2]
p arr.delete(2)  # 2
p arr            # [1, 3]




## `Array#delete_at` (destructive)
arr = [10, 20, 30]
p arr.delete_at(1) # 20
p arr              # [10, 30]




## `Array#delete_if` (destructive)
arr = [1, 2, 3, 4]
p arr.delete_if { |num| num.even? } # [1, 3]
p arr                               # [1, 3]
