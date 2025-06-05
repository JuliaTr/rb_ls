=begin
Take the following array and turn it into a new array that 
consists of strings containing one word. `(ex. ["white snow", 
etc...] → ["white", "snow", etc...]`. Look into using 
Array's `map` and `flatten` methods, as well as String's 
split method.

PEDAC:
Output: new array of strings
Rules:
  - each word should be a separate string

Algorithm:
- iterat over an array (use `map`) to return a new array
  (Return: a nested array of split words)
  - use `split` to split each string (Return: an array of words)
- flatten nested array (use `flatten`)
=end

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

result = a.map { |str| str.split }.flatten
p result 
# ["white", "snow", "winter", "wonderland", "melting", "ice", 
# "slippery", "sidewalk", "salted", "roads", "white", "trees"]

p a  
# ["white snow", "winter wonderland", "melting ice", 
# "slippery sidewalk", "salted roads", "white trees"]



## Solution from the book
a = ['white snow', 'winter wonderland', 'melting ice',
'slippery sidewalk', 'salted roads', 'white trees']
p a.object_id     # 60

a = a.map { |pairs| pairs.split }
a = a.flatten

p a               
# ["white", "snow", "winter", "wonderland", "melting", "ice", 
# "slippery", "sidewalk", "salted", "roads", "white", "trees"] 
p a.object_id     # 80
