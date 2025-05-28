# Practice Problem 1:
result =  [1, 2, 3].select do |num|
            num > 5
            'hi'
          end  

p result # [1, 2, 3]



# Practice Problem 2:
result =  ['ant', 'bat', 'caterpillar'].count do |str|
            str.length < 4
          end
p result  # 2



# Practice Problem 3:
result = [1, 2, 3].reject do |num|
  puts num
end

p result 

# Output:
# 1
# 2
# 3
# [1, 2, 3]



# Practice Problem 4:
arr = ['ant', 'bear', 'cat']

result = arr.each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

p result # {"a"=>"ant", "b"=>"bear", "c"=>"cat"}
