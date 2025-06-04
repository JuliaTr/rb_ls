=begin
Exercise:
Look at Ruby's merge method. Notice that it has two 
versions. What is the difference between `merge` and `merge!`? 
Write a program that uses both and illustrate the differences.
=end

## `#merge` (non-destructive):
hsh = { 'cat' => 'pet ', 
        'hummingbird' => 'wild bird', 
        'elephant' => 'wild mammal'
      }
hsh1 = { 'salmon' => 'fish', 'cat' => 'fluffy' }
hsh2 = { 'tree' => 'flora' }
result = hsh.merge(hsh1, hsh2) do |key, old_value, new_value|
  old_value + new_value
end

p result 
# {"cat"=>"pet fluffy", "hummingbird"=>"wild bird", 
# "elephant"=>"wild mammal", "salmon"=>"fish", "tree"=>"flora"}

p hsh
# {"cat"=>"pet ", "hummingbird"=>"wild bird", "elephant"=>"wild mammal"}

p hsh1 # {"salmon"=>"fish", "cat"=>"fluffy"}
p hsh2 # {"tree"=>"flora"}



## `#merge!` (destructive):
hsh = { 'cat' => 'pet ', 
        'hummingbird' => 'wild bird', 
        'elephant' => 'wild mammal'
      }

hsh1 = { 'salmon' => 'fish', 'cat' => 'fluffy' }
hsh2 = { 'tree' => 'flora' }

result = hsh.merge!(hsh1, hsh2) do |key, old_value, new_value|
  old_value + new_value
end

p result
# {"cat"=>"pet fluffy", "hummingbird"=>"wild bird", 
# "elephant"=>"wild mammal", "salmon"=>"fish", "tree"=>"flora"}

p hsh 
# {"cat"=>"pet fluffy", "hummingbird"=>"wild bird", 
# "elephant"=>"wild mammal", "salmon"=>"fish", "tree"=>"flora"}

p hsh1 # {"salmon"=>"fish", "cat"=>"fluffy"}
p hsh2 # {"tree"=>"flora"}

# The original object the `#merge!` is called on is mutated.




## Solution from the assignment:
cat = {name: "whiskers"}
weight = {weight: "10 lbs"}

puts cat.merge(weight)  # {:name=>"whiskers", :weight=>"10 lbs"}
puts cat                # {:name=>"whiskers"}
puts weight             # {:weight=>"10 lbs"}

puts cat.merge!(weight)  # {:name=>"whiskers", :weight=>"10 lbs"}
puts cat                 # {:name=>"whiskers", :weight=>"10 lbs"}
puts weight              # {:weight=>"10 lbs"}
