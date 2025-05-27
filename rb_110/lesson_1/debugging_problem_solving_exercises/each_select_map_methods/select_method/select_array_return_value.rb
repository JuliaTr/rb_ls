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



arr = [nil, false, true, '', 0, 1, [], {}]
result = arr.select do |element|
          element
        end

p result # [true, "", 0, 1, [], {}]
