=begin
Exercise:
Given the following code what's the difference between the 
two hashes that were created?
=end

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}  

p my_hash   # {:x=>"some value"}
p my_hash2  # {"hi there"=>"some value"}

=begin
On line 1, a local variable `x` is initialized and references
a String object `"hi there"`.

On line 2, a local variable `my_hash` is initialized and 
references a Hash object `{x: "some value"}`, where the key 
`x:` is a symbol.

On line 3, a local variable `my_hash2` is initialized and 
reserences `{x => "some value"}`, where the key `x` is the 
variable referencing the string value.
=end
