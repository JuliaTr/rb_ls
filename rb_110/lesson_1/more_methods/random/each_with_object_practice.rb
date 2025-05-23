# Exercise (basic): What is the return value of the following code?
arr = ['apple', 'banana', 'cherry']

result = arr.each_with_object({}) do |fruit, hash|
  hash[fruit] = fruit.length
end

p result # { 'apple'=>5, 'banana'=>6, 'cherry'=>6 }



# Exercise (intermediate): What will the following code return?
result = (1..5).each_with_object([]) do |num, array|
  array << num if num.even?
  array << num * 2 if num.odd?
end

p result # [2, 2, 6, 4, 10]



# Exercise (intermediate): Determine the output of this code.
hash = { a: 1, b: 2, c: 3, d: 4 }

result = hash.each_with_object([]) do |(key, value), array|
  array << key.to_s if value.even?
  array << value if value.odd?
end

p result  # [1, "b", 3, "d"]



# Exercise (advanced): What will this nested each_with_object return?
nested_h = [['a', 1], ['b', 2], ['c', 3]]

result = nested_h.each_with_object({}) do |sub_arr, hash|
  key, value = sub_arr
  # p sub_arr   # to understand
  # p key       # to understand
  # p value     # to understand
  hash[key] = value * 2
  hash[value] = key
end

p result 
# {"a"=>2, 1=>"a", "b"=>4, 2=>"b", "c"=>6, 3=>"c"}
