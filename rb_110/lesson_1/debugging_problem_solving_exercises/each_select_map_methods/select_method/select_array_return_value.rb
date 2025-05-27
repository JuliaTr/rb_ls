# Array Examples with `select`:
result = [1, 2, 3].select do |num|
          puts num
          num > 1
        end

p result 

# Output:
# 1
# 2
# 3
# [2, 3]
