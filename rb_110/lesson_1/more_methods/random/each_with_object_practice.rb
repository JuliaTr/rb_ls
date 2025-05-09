# Exercise (basic): What is the return value of the following code?
arr = ['apple', 'banana', 'cherry']

result = arr.each_with_object({}) do |fruit, hash|
  hash[fruit] = fruit.length
end

p result # { 'apple'=>5, 'banana'=>6, 'cherry'=>6 }
