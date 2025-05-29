#3 Practice Problem 1:
result =  [1, 2, 3].select do |num|
            num > 5
            'hi'
          end  

p result # [1, 2, 3]




## Practice Problem 2:
result =  ['ant', 'bat', 'caterpillar'].count do |str|
            str.length < 4
          end
p result  # 2




## Practice Problem 3:
result = [1, 2, 3].reject do |num|
  puts num
end

p result 

# Output:
# 1
# 2
# 3
# [1, 2, 3]




## Practice Problem 4:
arr = ['ant', 'bear', 'cat']

result =  arr.each_with_object({}) do |value, hash|
            hash[value[0]] = value
          end

p result # {"a"=>"ant", "b"=>"bear", "c"=>"cat"}

p arr.object_id     # 60
p result.object_id  # 80


### Experiment:
arr = ['ant', 'bear', 'cat']
hash = {}

p hash.object_id      # 60

result =  arr.each_with_object(hash) do |value, hash|
            hash[value[0]] = value
          end

p result             # {"a"=>"ant", "b"=>"bear", "c"=>"cat"}
p result.object_id   # 60



## Practice Problem 5:
hash = { a: 'ant', b: 'bear' }
p hash.shift   # [:a, "ant"]
p hash         # {:b=>"bear"}



## Practice Problem 6:
p ['ant', 'bear', 'caterpillar'].pop.size  # 11



## Practice Problem 7:
result =  [1, 2, 3].any? do |num|
            puts num
            num.odd?
          end

p result

# Output:
# 1
# true



## Practice Problem 8:
arr = [1, 2, 3, 4, 5]
p arr.take(2)  # [1, 2]
p arr          # [1, 2, 3, 4, 5]

p arr.take     # wrong number of arguments (given 0, expected 1) (ArgumentError)



## Practice Problem 9:
h = { a: 'ant', b: 'bear' }

result = h.map do |_, value|
  if value.size > 3
    value
  end
end 

p result  # [nil, "bear"]
