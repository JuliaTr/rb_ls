# What does `shift` do in the following code? How can we find out?
hash = { a: 'ant', b: 'bear' }
p hash.shift  # [:a, "ant"]
p hash        # {:b=>"bear"}

=begin
What does `shift` do in the following code?

The `shift` method returns an array of the first key-value pair 
`[:a, "ant"]`, mutating the original hash by deleting this 
key-value pair from it.


How can we find out?

We can find out by outputing the return value and the value of the
original hash after the operation. Also, we can consult the documentation:
"Removes the first hash entry ... returns a 2-element Array containing
the removed key and value. Returns `nil` if the hash is empty"
=end
