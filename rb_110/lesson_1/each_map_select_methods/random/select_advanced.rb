# Idetify the return value of the `#select` method
arr = [{ a: 1, b: 2}, { a: 3, b: 4}, { a: 5, b: 6 }]

result = arr.select do |hash|
  hash.all? do |key, value|
    value > 3
  end
end

p result # [{a=>5, b=>6}]



# Experiments:
result = { a: 1, b: 2}.all? do |key, value|
  value > 3
end

p result # false


result = { a: 3, b: 4 }.all? do |key, value|
  value > 3
end

p result  # false


result = { a: 5, b: 6 }.all? do |key, value|
  value > 3
end

p result # true
