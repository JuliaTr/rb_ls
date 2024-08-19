# What do each of these `puts` statements output?

a = %w(a b c d e)

puts a.fetch(7)                       
# IndexError: `fetch': index 7 outside of array bounds: -5...5

puts a.fetch(7, 'beats me')             
# beats me

puts a.fetch(7) { |index| index**2 }    
# 49

# `Array#fetch` returns the element at a given offset.
# On line 5, there's an `IndexError` as an output to the console.
# An Integer `7` being passed as an argument to `Array#fech` method doesn't exist as an index in the `Array` object of elements being referenced by a initialized variable on line 3.

# On line 6, the output is `beats me` as it is a default value among the multiple arguments passed to the method.

# On line 7, the Integer argument index `7` is not in range. 
# The block is called with the index. 
# The return value `49` of the block is outputted to the console.