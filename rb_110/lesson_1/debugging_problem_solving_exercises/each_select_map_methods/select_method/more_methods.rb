## `Enumerable#any?`:
result =  { a: "ant", b: "bear", c: "cat" }.any? do |_, value|
            value.size > 4
          end

p result # false


result = [1, nil, "apple"].any? { |e| e.length > 4 }
p result # undefined method `length' for 1:Integer (NoMethodError)


h = { x: nil, y: "yes", z: false }

result = h.any? do |k, v| 
          p k
          p :z
          p v
          k == :z && v 
        end

p result 

# Output:
# :x
# :z
# nil

# :y
# :z
# "yes"

# :z
# :z
# false

# false


h = { x: nil, y: "yes", z: true }

result = h.any? { |k, v| k == :z && v }
p result  # true




## `Enumerable#all?`:
result =  [1, 2, 3].all? do |num|
            num > 2
          end

p result # false


result =  { a: "ant", b: "bear", c: "cat" }.all? do |_, value|
            value.length >= 3
          end

p result  # true


result = [2, 4, 6].all? { |num| num.even? && num > 0 }
p result # true


h = { a: "ant", b: "bat", c: 0 }
result = h.all? { |k, v| k.is_a?(Symbol) && v }
p result # true




## `Enumerable#each_with_index`:
result =  [1, 2, 3].each_with_index do |num, index|
            puts "The index of #{num} is #{index}"
          end

p result

# Output:
# The index of 1 is 0
# The index of 2 is 1
# The index of 3 is 2
# [1, 2, 3]


h = { a: "ant", b: "bear", c: "cat" }

result =  h.each_with_index do |pair, index|
            puts "The index of #{pair} is #{index}." 
          end

p result 

# Output:
# The index of [:a, "ant"] is 0
# The index of [:b, "bear"] is 1
# The index of [:c, "cat"] is 2
# {:a=>"ant", :b=>"bear", :c=>"cat"}


arr = ["a", "b", "c"]

result = arr.each_with_index { |char, idx| idx * 2 }

p result # ["a", "b", "c"]
p arr    # ["a", "b", "c"]


h = { name: "Sam", age: 25 }

result = h.each_with_index do |pair, idx|
  p pair.last * idx
end

p result 

# Output:
# ""
# 25
# {:name=>"Sam", :age=>25}

=begin
Iteration 1 (`[:name, "Sam"`]):
- [:name, "Sam"].last   => "Sam"
- "Sam" * 0

=end




## `Enumerable#each_with_object`:
result = [1, 2, 3].each_with_object([]) do |num, array|
          array << num if num.odd?
        end

p result  # [1, 3]



h = { a: "ant", b: "bear", c: "cat" }

result = h.each_with_object([]) do |pair, array|
          array << pair.last
        end

p result # ["ant", "bear, "cat"]



h = { a: "ant", b: "bear", c: "cat" }

result = h.each_with_object({}) do |(key, value), hash|
          hash[value] = key
        end

p result # {"ant"=>:a, "bear"=>:b, "cat"=>:c}


arr = [5, 10, 15]

result =  arr.each_with_object({}) do |num, hash|
            hash[num] = num.to_s
          end

p result # {5=>"5", 10=>"10", 15=>"15"}


h = { m: 1, n: 2 }

result =  h.each_with_object([]) do |(key, value), arr| 
            arr << [key.to_s, value + 1]
          end

p result  # [["m", 2], ["n", 3]]



## `Enumerable#first`:
p [1, 2, 3].first  # 1
p ({ a: "ant", b: "bear", c: "cat" }.first(2))  # [[:a, "ant"], [:b, "bear"]]

p ["ear", "eye", "elbow"].first(2)  # ["ear", "eye"]
p({"Happy": "Sad", Angry: nil}.first(1))  # [[:Happy, "Sad"]]




## `Enumerable#include?`:
p [1, 2, 3].include?(1)  # true
p({ a: "ant", b: "bear", c: "cat" }.include?("ant"))  # false
p({ a: "ant", b: "bear", c: "cat" }.include?(:a))     # true

p %w(dog cat fish).include?("cat")  # true
p({ color: "red", size: "medium" }.include?(:size))  # true




## `Enumerable#partition`:
result =  [1, 2, 3].partition do |num|
            num.odd?
          end

p result  # [[1, 3], [2]]



odd, even = [1, 2, 3].partition do |num|
              num.odd?
            end

p odd   # [1, 3]
p even  # [2]



h = { a: "ant", b: "bear", c: "cat" }

long, short = h.partition do |_, value|
                value.size > 3
              end

p long, short
# [[:b, "bear"]]
# [[:a, "ant"], [:c, "cat"]]

p long   # [[:b, "bear"]]
p short  # [[:a, "ant"], [:c, "cat"]]

=begin
irb(main):001:0> h = { a: "ant", b: "bear", c: "cat" }
=> {:a=>"ant", :b=>"bear", :c=>"cat"}
irb(main):002:1* long, short = h.partition do |_, value|
irb(main):003:1*   value.size > 3
irb(main):004:0> end
=> [[[:b, "bear"]], [[:a, "ant"], [:c, "cat"]]]
=end

p long.to_h   # {:b=>"bear"}
p short.to_h  # {:a=>"ant", :c=>"cat"}
