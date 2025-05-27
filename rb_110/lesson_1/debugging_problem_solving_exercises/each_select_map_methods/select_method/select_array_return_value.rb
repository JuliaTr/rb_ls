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



result = ['a', 'b', 'c'].select do |char|
  puts char
  char if char != 'b'
end

p result  

# Output:
# a
# b
# c
# ["a", "c"]



array = [1, 2, 3, 4, 5]
result = array.select do |num|
  p array
  p num
  array.delete(num) if num < 3
  p array
  p num
  num > 2
end

p result 

# Output:
# [1, 2, 3, 4, 5]
# 1
# [2, 3, 4, 5]
# 1

# [2, 3, 4, 5]
# 3
# [2, 3, 4, 5]
# 3

# [2, 3, 4, 5]
# 4
# [2, 3, 4, 5]
# 4

# [2, 3, 4, 5]
# 5
# [2, 3, 4, 5]
# 5

# [3, 4, 5]



result = [5, 10, 15].select do |number|
  number.tap { |n| n.to_s }
  number < 10 && "keep this"
end

p result  # [5]




## Hash Examples with `select`:
h = { a: 1, b: false, c: nil, d: 'hello', e: [] }
result = h.select do |key, value|
          key if value
        end 

p result # {:a=>1, :d=>"hello", :e=>[]}


counts = { a: 1, b: 2 }
h = { a: 'ant', b: 'bear', c: 'cat' }

result = h.select do |animal, name|
          p counts[animal]
          counts[animal].odd? rescue false
        end

p result

# Output:
# 1
# 2
# nil
# {:a=>"ant"}

=begin
`counts[animal].odd? rescue false`:

Iteration 1 (`animal` is `:a`):
counts[:a] => 1  # odd
1.odd? => true
No exception; the value `true` is returned by the block

Iteration 2 (`animal` is `:b`):
counts[:b]  => 2  # even
2.odd? => false
No exception; the value `true` is returned by the block

Iteration 3 (`animal` is `:c`):
counts[:c]  => nil  # no `:c` key in the `counts` hash 
nil.odd?   # would raise a `NoMethodError`; `nil` doesn't have an `odd?` method
`rescue false` catches this exception and returns `false` instead

=end
