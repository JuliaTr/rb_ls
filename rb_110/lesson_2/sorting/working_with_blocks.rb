## Example 1:
result =  [[1, 2], [3, 4]].each do |arr|
            puts arr.first
          end

p result

# Output:
# 1
# 3
# [[1, 2], [3, 4]]




## Example 2:
result =  [[1, 2], [3, 4]].map do |arr|
            puts arr.first
          end

p result

# Output:
# 1
# 3
# [nil, nil]




## Example 3:
result =  [[1, 2], [3, 4]].map do |arr|
            puts arr.first
            arr.first
          end

p result 

# Output:
# 1
# 3
# [1, 3]




## Example 4:
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

p my_arr

# Output:
# 18
# 7
# 12
# [[18, 7], [3, 12]]




## Example 5:
result = [[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

p result # [[2, 4], [6, 8]]




## Example 6:
arr = [{ a: 'ant', b: 'elephant' }, { c: 'cat' }]
result = arr.select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end

p result # [{:c=>"cat"}]



### Experiments:
arr = [{ a: 'ant', b: 'elephant' }, { c: 'cat' }]
result = arr.select do |hash|
  sub_result = hash.all? do |key, value|
    value[0] == key.to_s
  end
  p sub_result  # just to output `all?` return value
end

p result

# Output:
# false
# true
# [{:c=>"cat"}]


arr = [{ a: 'ant', b: 'elephant' }, { c: 'cat' }]
result = arr.select do |hash|
  hash.any? do |key, value|
    value[0] == key.to_s
  end
end

p result # [{:a=>"ant", :b=>"elephant"}, {:c=>"cat"}]
