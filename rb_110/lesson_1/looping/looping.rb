# arr = [1, 2, 3, 4, 5]

# arr[0] += 1
# arr[1] += 1
# arr[2] += 1
# arr[3] += 1
# arr[4] += 1

# p arr         # [2, 3, 4, 5, 6]



# # Using `loop` method (for operations above):
# arr = [1, 2, 3, 4, 5]
# counter = 0

# loop do
#   arr[counter] += 1
#   counter += 1
#   break if counter == arr.size
# end

# p arr            # [2, 3, 4, 5, 6]


# # Experiment:
# arr = [1, 2, 3, 4, 5]
# counter = 0

# loop do
#   p counter
#   arr[counter] += 1
#   counter += 1
#   p counter
#   break if counter == arr.size
# end

# p arr

# # Output:
# # 0
# # 1
# # 1
# # 2
# # 2
# # 3
# # 3
# # 4
# # 4
# # 5
# # [2, 3, 4, 5, 6]



# #### To control a loop:

# # Infinite loop
# loop do
#   puts 'Hello!'
# end


# # To exit the nearest loop:
# loop do
#   puts 'Hello!'
#   break
# end

# # Output: Hello!

# =begin
# There's only 1 iteration:

# `'Hello!'` is output
# `break` is executed which ends the loop
# =end


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
