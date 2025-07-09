# Modify the following loop so it iterates 5 times instead of just once.
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break
end

# Output: Number of iterations = 1


## Solution:
iteration = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

# Output: 
# Number of iterations = 1
# Number of iterations = 2
# Number of iterations = 3
# Number of iterations = 4
# Number of iterations = 5
