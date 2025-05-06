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
