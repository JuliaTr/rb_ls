## Array Examples with `select`:
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




## Hash Examples with `select`:
h = { a: 1, b: false, c: nil, d: 'hello', e: [] }
result = h.select do |key, value|
          key if value
        end 

p result # {:a=>1, :d=>"hello", :e=>[]}
