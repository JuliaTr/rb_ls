# Idetify the return value of the `#select` method

## Exercise: basic
result = [1, 2, 3, 4, 5].select do |num|
  num.even?
end

p result   # [2, 4]



## Exercise: intermediate
result = { a: 1, b: 2, c: 3, d: 4}.select do |key, value|
  value > 2
end

p result  # {c: 3, d: 4}



## Exercise: intermediate
result = ['apple', 'banana', 'cherry', 'date'].select do |fruit|
  fruit.size > 5
  true
end

p result  # ['apple', 'banana', 'cherry', 'date']



# Exercise: advanced
result = [1, 2, 3, 4, 5].select do |num|
  puts num
  num > 3
end

p result

# Output:
# 1
# 2
# 3
# 4
# 5
# [4, 5]
