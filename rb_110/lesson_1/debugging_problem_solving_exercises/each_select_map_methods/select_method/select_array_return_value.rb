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



result = ['a', 'b', 'c'].select do |char|
            char + '!'
            nil
          end

p result # []
