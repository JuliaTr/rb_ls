# 1.  Explain the difference between `==` and `equal?` in Ruby. 
# Provide an example where they might produce different results.

Answer:
p 1 == 1            # true
p 250 == 250        # true
p 1000 == 1000      # true

p 2.0 == 2          # true

p 'ans' == 'ans'    # true
p 'ans' == 'ANS'    # false


p 1.equal?(1)            # true
p 250.equal?(250)        # true
p 1000.equal?(1000)      # true

p 2.0.equal?(2)          # false

p 'ans'.equal?('ans')    # false
p 'ans'.equal?('ANS')    # false

=begin
The `==` and the `equal?` methods return `true` or `false`.

The `==` compares value. 

If the `==` compares integers and floats, they need to be 
numerically equal so that `==` returns `true`. Ruby compares 
strings from left to right character-by-character. A downcased 
character is not the same as the upcased character. In this 
case `false` is returned.

The `equal?` compares the data type and value. The object passed
as an argument to it should be the same type and value as the object
the `equal?` is invoked on.
=end