hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot' }

p hsh['fruit']      # "apple"
p hsh['fruit'][0]   # "a"

=begin
On line 4, the string elemment reference `[0]` is calle on
the return value of array element reference `hsh['fruit']`,
which is `"apple"`.
=end
