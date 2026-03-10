# ## `String#delete` (non-destructive):
# p 'abcabc'.delete('a') # "bcbc"

# str = 'abcabc'
# p str.delete('a')  # "bcbc"
# p str              # "abcabc"

# # `str` is reassigned:
# str = str.delete('a') # "bcbc"
# p str



# `Array#delete` (destructive)
arr = [1, 2, 3, 2]
p arr.delete(2)  # 2
p arr            # [1, 3]



