# Identify the return value of the `#select` method
result = [1, 2, 3, 4, 5].select do |num|
  num.even?
  puts "Number: #{num}"
  num > 2
end

p result

# Output:
# Number: 1
# Number: 2
# Number: 3
# Number: 4
# Number: 5
# [3, 4, 5]
