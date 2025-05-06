# Identify the return value of the `#select` method
nested_arr = [[[1, 2], [3, 4]], [[5, 6], [7, 8]]]

result = nested_arr.select do |arr|
  arr.select do |sub_arr|
    sub_arr.any? { |num| num.odd? }   # true
  end
end

p result   # [[[1, 2], [3, 4]], [[5, 6], [7, 8]]]



# Experiments:
result = [1, 2].any? { |num| num.odd? }
p result   # true
