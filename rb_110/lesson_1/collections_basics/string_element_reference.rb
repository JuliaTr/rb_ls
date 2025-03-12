str = 'abcdefghi'
p str[2]   # "c"

=begin
On line 1, a local variable `str` is initialized and references
a String object with a value of `'abcdefghi'`.

On line 2, the string element reference `[]`, which is a
method invoked on the object referenced by `str`. Inside the
`[]`, `2` is an integer-based index that represents the third 
character (`c`) in the string. 

The index starts counting at zero and increments by one for
the remaining index values.

The return value of `str[2]` is passed to the `p` method invocation
to output `"c"` to the console.

So, `c` is a specific character referenced by using the index.
=end
