# What is output by the last 2 lines of code? What concept 
# does the code demonstrate? 

a = ["foo", "bar", "baz"]
b = a
c = b[0]
a[0].upcase!

p c  # "FOO"
p b  # ["FOO", "bar", "baz"]

=begin
Description:
The output is `"FOO"`, `["FOO", "bar", "baz"]`. The concept 
is variables as pointers.

On line 1, a local variable `a` is initialized and references 
an array object with a value of `["foo", "bar", "baz"]`. On line
2, a local variable `b` is initialized and references the same
object as `a`. On line 3, a local variable `c` is initialized 
and references an object referenced by `b[0]`, which is `"foo"`.
On line 4, the mutating `upcase!` method upcases object referenced
by `a[0]`, `"FOO"`. 

`a` and `b` point to the same object, which the first element was 
mutated, `"FOO"`, so we see `["FOO", "bar", "baz"]` as an output 
in the console. Due to the invocation of `upcase!`on `a[0]`, 
which is `"foo"` originally, now `"FOO"`, outputting the value of
`c`, we see that it was mutated inside the original array because 
`c` points to this object.
=end



### Experiments:
a = ["foo", "bar", "baz"]
b = a     
c = b[0]  
p a  # ["foo", "bar", "baz"] == [c, "bar", "baz"]
p b  # ["foo", "bar", "baz"] == [c, "bar", "baz"]
p c  # "foo"

p a.object_id      # 60
p b.object_id      # 60
p c.object_id      # 80

puts "-------------------"
p a[0].object_id   # 80
p a[1].object_id   # 100
p a[2].object_id   # 120

puts "------------------"
p a[0].upcase!  # "FOO"
p a  # ["FOO", "bar", "baz"] == [c, "bar", "baz"]
p b  # ["FOO", "bar", "baz"] == [c, "bar", "baz"]
p c  # "FOO"

p a.object_id       # 60
p b.object_id       # 60
p c.object_id       # 80

p a[0].object_id    # 80
p b[0].object_id    # 80

p c[0].object_id    # 140      

puts "------------------"
p c[0]            # "F"
p c[0].downcase!  # "f"
p c[0]            # "F"
p c[0].object_id     # 160

p a  # ["FOO", "bar", "baz"]
p b  # ["FOO", "bar", "baz"]
p c  # "FOO"

p a.object_id        # 60
p b.object_id        # 60
p c.object_id        # 80

p a[0].object_id     # 80
p b[0].object_id     # 80
p c[0].object_id     # 180

=begin
Array and its elements:
An Array object `["foo", "bar", "baz"]` has its `object_id`, `60`. 
Inside this object, there are 3 objects with 3 different `object_id`’s 
`80`, `100`, `120`.  

Array element reference (`Array#[]`):
If we invoke an array element reference (`Array#[]`) with an indice 
inside of it on an object referenced by `a`, for example, we 
retrieve the value by the indices. `Array#[]` doesn’t create a new 
object, it just returns an existing one. 

String mutation:
Mutating the whole string object in the array, the string’s 
`object_id` isn’t changed because mutation doesn’t change `object_id`. 

String character reference (`String#[]`):
However, string character reference (`String#[]`) method returns a 
new String object with a new `object_id` containing that character, 
when accessing a single character. When accessing a substring (like 
`c[0..1]`), it returns a new String object containing that substring.

Each call to `String#[]` for a single character creates a new String 
object with the same value but with a different `object_id`, even if 
it's the same character. 

Mutations on string characters:
Any mutations performed on this new string character don’t influence 
the whole string unless the return value is assigned to `c[0]` for 
example.
=end
