# Examples of selection:
hsh = { 
  a: 'apple',
  b: 'pear', 
  c: 'orange', 
  d: 'kiwi', 
  e: 'banana' 
}
counter = 0
new_hsh = {}

for letter, fruit in hsh
  new_hsh[letter] = fruit if fruit.size > 4
end

p new_hsh

# Output: {:a=>'apple', :c=>'orange', :e=>'banana'}
