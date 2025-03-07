# 4. What's the difference between `==` and `===` in Ruby? Provide an 
# example where they might produce different results.

p 1 == 1            # true
p 250 == 250        # true
p 1000 == 1000      # true

p 2.0 == 2          # true

p 'ans' == 'ans'    # true
p 'ans' == 'ANS'    # false

p Range == 5         # false
p String == 'hi'     # false


p 1 === 1            # true
p 250 === 250        # true
p 1000 === 1000      # true

p 2.0 === 2          # true

p 'ans' === 'ans'    # true
p 'ans' === 'ANS'    # false

p Range === 5      # false (checks if `5` included in the range)
p String === 'hi'  # true  (checks if `'hi'` is a string)

=begin
The `==` and the `===` methods return `true` or `false`. 

The `==` method compares values. 

If the `==` compare integers
and floats, they need to be numerically equal so that `==` returns
`true`. Ruby compares strings from left to right character-by-character.
A downcased character is not the same as the upcased character. 
In this case `false` is returned.

The case equality operator `===` also can compare the data type.
Its behavior can vary depending on the data type that implements it.
=end