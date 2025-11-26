## Looping
index = 0

loop do
  puts "Ruby"
  break if index == 3
  index += 1
end

# Output:
# Ruby
# Ruby
# Ruby
# Ruby


times = 1

loop do
  puts "Ruby"
  break if times == 3
  times += 1
end

# Output:
# Ruby
# Ruby
# Ruby



# Return values:
# `loop` method:
index = 0

p(loop do
  puts "Ruby"
  break
end)

# Output:
# Ruby
# nil


# `while` loop:
arr = [1, 2, 3]
index = 0

p(while index < arr.size
  puts arr[index]
  index += 1
end)

# Output
# 1
# 2
# 3
# nil


# `until` loop:
arr = [1, 2, 3]
index = 0

p(until index == arr.size
  puts arr[index]
  index += 1
end)

# Output
# 1
# 2
# 3
# nil


# `for` loop:
p(for element in [1, 2, 3]
  puts element
end)

# Output:
# 1
# 2
# 3
# [1, 2, 3]


## Iterating
arr = [1, 2, 3]
index = 0

loop do
  p arr[index]
  break if index == arr.size
  index += 1
end

# Output:
# 1
# 2
# 3
# nil


arr = [1, 2, 3]
index = 0

loop do
  p arr[index]
  break if index == arr.size - 1
  index += 1  
end

# Output:
# 1
# 2
# 3


arr = [1, 2, 3]
index = 0

loop do
  break if index == arr.size
  p arr[index]
  index += 1
end

# Output
# 1
# 2
# 3


# Iteration using `#each`:
[1, 2, 3].each { |val| puts val }

# Output:
# 1
# 2
# 3


# Nested iteration:
arr = [[1, 2], [3, 4]]
index_outer = 0

loop do
  break if index_outer == arr.size
  index_inner = 0

  loop do
    nested_arr = arr[index_outer]

    break if index_inner == nested_arr.size
    puts nested_arr[index_inner]
    index_inner += 1
  end

  index_outer += 1
end

# Output:
# 1
# 2
# 3
# 4


# Nested iteration using `#each`:
[[1, 2], [3, 4]].each do |nested_arr|
  nested_arr.each do |val|
    puts val
  end
end

# Output:
# 1
# 2
# 3
# 4



## Transformation:
arr = [[1, 2], [3, 4]]
index_outer = 0
index_inner = 0

loop do
  break if index_outer == arr.size

  index_inner = 0
  loop do
    nested_arr = arr[index_outer]

    break if index_inner == nested_arr.size
    nested_arr[index_inner] += 1
    index_inner += 1
  end

  index_outer += 1
end

p arr   # [[2, 3], [4, 5]]



arr = [[1, 2], [3, 4]]
arr.map! do |nested_arr|
  nested_arr.map! do |val|
    val += 1
  end
end
p arr  # [[2, 3], [4, 5]]
