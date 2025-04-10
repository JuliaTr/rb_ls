arr = [1, 2, 3, 4, 5]

arr[0] += 1
arr[1] += 1
arr[2] += 1
arr[3] += 1
arr[4] += 1

p arr         # [2, 3, 4, 5, 6]



# Using `loop` method (for operations above):
arr = [1, 2, 3, 4, 5]
counter = 0

loop do
  arr[counter] += 1
  counter += 1
  break if counter == arr.size
end

p arr            # [2, 3, 4, 5, 6]


# Experiment:
arr = [1, 2, 3, 4, 5]
counter = 0

loop do
  p counter
  arr[counter] += 1
  counter += 1
  p counter
  break if counter == arr.size
end

p arr

# Output:
# 0
# 1
# 1
# 2
# 2
# 3
# 3
# 4
# 4
# 5
# [2, 3, 4, 5, 6]



#### To control a loop:

# Infinite loop
loop do
  puts 'Hello!'
end


# To exit the nearest loop:
loop do
  puts 'Hello!'
  break
end

# Output: Hello!

=begin
There's only 1 iteration:

`'Hello!'` is output
`break` is executed which ends the loop
=end


loop do
  number = rand(1..10)
  p number
  puts 'Hello!'
  if number == 5
    puts 'Exiting...'
    break
  end
end

# Output:
# 6
# Hello!
# 9
# Hello!
# 2
# Hello!
# 4
# Hello!
# ...    (more iterations until `number` equals `5`)
# 5
# Hello!
# Exiting...

=begin
On line 83, when `number == 5` evaluates to true, `Exiting...` is 
output and the `break` keyword is executed exiting the `loop` block.
=end


# Experiment:
counter = 0

loop do
  puts counter
  counter += 1
  break if counter == 3
end

# Output:
# 0
# 1
# 2



counter = 0

loop do
  puts 'Hello!'
  counter += 1
  break if counter == 5
end

# Output: 
# Hello!
# Hello!
# Hello!
# Hello!
# Hello!


# Experiment:
# Infinite loop:
loop do 
  counter = 0     # reasignment on each iteration
  puts 'Hello!'
  break if counter == 5
end



counter = 0

loop do
  break if counter == 0
  puts 'Hello!'
  counter += 1
end

=begin
On line 151, a local variable `counter` is initialized and references 
an Integer object with a value of `0`. Inside the `do...end` block 
(lines 153-156) passed to the `loop` method, the code below `break` 
(line 154) is not executed because of the condition `counter == 0`.
=end



counter = 0

loop do
  counter += 1
  next if counter.odd?
  puts counter
  break if counter > 5
end

# Output:
# 2
# 4
# 6


# Experiments:
counter = 0

loop do
  next if counter.odd?
  counter += 1
  puts counter
  break if counter > 5
end

# Output:
# 1
# infinite loop...


counter = 0

loop do
  counter += 1
  next if counter.odd?
  puts counter
  break if counter == 5 
end

# Output: infinite loop 
