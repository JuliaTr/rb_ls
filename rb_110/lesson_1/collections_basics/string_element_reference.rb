str = 'abcdefghi'
p str[2]   # "c"

=begin
On line 1, a local variable `str` is initialized and references
a String object with a value of `'abcdefghi'`.

On line 2, the string element reference `[]` is a
method invoked on the object referenced by `str`. Inside the
`[]`, `2` is an integer-based index that represents the third 
character (`c`) in the string. 

The index starts counting at zero and increments by one for
the remaining index values.

The return value of `str[2]` is passed to the `p` method invocation
to output `"c"` to the console.

So, `c` is a specific character referenced by using the index.
=end


str = 'abcdefghi'
p str[2, 3]  # "cde"

=begin
On line 24, Inside the `[]`, `2` is an integer-based index
that represents the third chaaracter (`c`) in the string.
`3` represents the length of the substring to reference and the
number of characters tto return.
=end


# Exercise: reference `gress` from within the string.
s = 'The grass is green'
p str[4, 5]       # "grass"



str = 'abcdefghi'
char1 = str[2]
char2 = str[2]

p char1   # "c"
p char2   # "c"

p char1.object_id   # 60
p char2.object_id   # 80

p char1.object_id == char2.object_id  # false

# Every time the a substring is referenced, it has a brand
# new object ID, even if its value is the same.


# Experiments:
p char1 == char2    # true; (because the value is the same)
