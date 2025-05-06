# Idetify the return value of the `#select` method

## Exercise: basic
result = [1, 2, 3, 4, 5].select do |num|
  num.even?
end

p result   # [2, 4]
