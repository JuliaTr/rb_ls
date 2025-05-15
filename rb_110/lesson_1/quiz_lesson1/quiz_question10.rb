# Examples of selection:
## Example 1:
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



## Example 2:
def some_method(words)
  arr = []
  counter = 0

  loop do
    word = words[counter]
    arr << word if word.size < 4

    counter += 1
    break if counter == words.size
  end

  arr
end

poem = %w(April is the cruelest month)
p some_method(poem)  # ["is", "the"]
