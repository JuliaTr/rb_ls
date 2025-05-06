result = [1, 2, 3].map do |num|
  num * 2    # return value of the block
end

p result  # [2, 4, 6]



# not tranformation instruction
result = [1, 2, 3].map do |num|
  num.odd?   # return value of the block
end

p result   # [true, false, true]
