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





# NOT selection:
## Example 1:
# transformation (some values are multiplied by `2`)
arr = [1, 2, 3, 4, 5]
counter = 0

new_arr = []

loop do
  num = arr[counter]

  if num >= 3
    new_arr << 0
  else
    new_arr << num * 2
  end

  counter += 1
  break if counter == arr.size
end

p new_arr # [2, 4, 0, 0, 0]



## Example 2:
# just iteration without selection or transformation
num_arr = [2, 4, 7, 8, 11, 15]
counter = 0

until counter == num_arr.size
  puts num_arr[counter] + 1

  counter += 1
end


# Output:
# 3
# 5
# 8
# 9
# 12
# 16
