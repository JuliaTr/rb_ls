hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot' }

p hsh['fruit']      # "apple"
p hsh['fruit'][0]   # "a"

=begin
On line 4, the string elemment reference `[0]` is called on
the return value of array element reference `hsh['fruit']`,
which is `"apple"`. The `hsh['fruit'][0]` returns `"a"`.
=end



hsh = { 'fruit' => 'apple', 'vegetable' => 'carrot', 'fruit' => 'pear' }
p hsh

=begin
Output:
hash_element_reference.rb:13: warning: key "fruit" is 
duplicated and overwritten on line 13
{"vegetable"=>"carrot", "fruit"=>"pear"}
=end



hsh = { 'apple' => 'fruit', 'carrot' => 'vegetable', 'pear' => 'fruit' }
p hsh  # {"apple"=>"fruit", "carrot"=>"vegetable", "pear"=>"fruit"}



country_capitals = { uk: 'London', france: 'Paris', germany: 'Berlin' }
p country_capitals.keys       # [:uk, :france, :germany]
p country_capitals.values     # ["London", "Paris", "Berlin"]
p country_capitals.values[0]  # "London"

=begin
On line 34, the element at index `0`, which is `"London"` of the 
array `["London", "Paris", "Berlin"]` returned by `country_capitals.values`, 
is referenced by `[0]`.
=end
