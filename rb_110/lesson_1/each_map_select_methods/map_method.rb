result = [1, 2, 3].map do |num|
  num * 2    # return value of the block
end

p result  # [2, 4, 6]



# not tranformation instruction
result = [1, 2, 3].map do |num|
  num.odd?   # return value of the block
end

p result   # [true, false, true]



# What is the return value of `map`?
result = [1, 2, 3].map do |num|
  num.odd?
  puts num  # return value of the block
end 

p result  

# Output
# 1
# 2
# 3
# [nil, nil, nil]
