=begin
Exercise:
What will the following program output?
=end

hash1 = { shoes: "nike", "hat" => "adidas", :hoodie => true }
hash2 = { "hat" => "adidas", :shoes => "nike", hoodie: true }

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

p hash1.object_id  # 60
p hash2.object_id  # 80

# Output: These hashes are the same!

=begin
We retrieve the value based on the key.
=end



## Experiment:
a = [1, 2, 3]
b = [1, 2, 3]

p a.object_id  # 60
p b.object_id  # 80

p a == b
