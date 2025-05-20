=begin
Exercise: Hash Iteration Bug (Advanced)
This code should create a new hash with the keys and values 
swapped. What's going wrong?
=end

fruits = { "apple" => "red", "banana" => "yellow", "grape" => "purple" }
new_hash = {}
counter = 0
keys = fruits.keys

loop do
  break if counter == fruits.size
  current_key = keys[counter]
  current_value = fruits[current_key]

  new_hash[current_value] = current_key
  counter += 1
end

p new_hash # {"red"=>"apple", "yellow"=>"banana", "purple"=>"grape"}
