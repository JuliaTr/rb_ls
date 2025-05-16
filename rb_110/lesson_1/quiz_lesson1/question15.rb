# `each`:
h = { a: 1, b: 2, c: 3, d: 4, e: 5 }
result = h.each do |_, num|
  plus_one = num + 1
  puts "#{num} plus 1 is #{plus_one}"
end

p result

# Output:
# 1 plus 1 is 2
# 2 plus 1 is 3
# 3 plus 1 is 4
# 4 plus 1 is 5
# 5 plus 1 is 6
# {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5}



# `select`:
h = { a: 1, b: 2, c: 3, d: 4, e: 5 }
result = h.select do |_, num|
  plus_one = num + 1
  puts "#{num} plus 1 is #{plus_one}"
end

p result

# Output:
# 1 plus 1 is 2
# 2 plus 1 is 3
# 3 plus 1 is 4
# 4 plus 1 is 5
# 5 plus 1 is 6
# {}
