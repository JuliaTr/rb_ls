## `Enumerable#any?`:
result =  { a: "ant", b: "bear", c: "cat" }.any? do |_, value|
            value.size > 4
          end

p result # false




## `Enumerable#all?`:
result =  [1, 2, 3].all? do |num|
            num > 2
          end

p result # false


result =  { a: "ant", b: "bear", c: "cat" }.all? do |_, value|
            value.length >= 3
          end

p result  # true




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

result = h.each_with_index do |pair, index|
  puts "The index of #{pair} is #{index}." 
end

p result 

# Output:
# The index of [:a, "ant"] is 0
# The index of [:b, "bear"] is 1
# The index of [:c, "cat"] is 2
# {:a=>"ant", :b=>"bear", :c=>"cat"}




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




## `Enumerable#first`:
p [1, 2, 3].first  # 1
p ({ a: "ant", b: "bear", c: "cat" }.first(2))  # [[:a, "ant"], [:b, "bear"]]



## `Enumerable#include?`:
p [1, 2, 3].include?(1)  # true
p({ a: "ant", b: "bear", c: "cat" }.include?("ant"))  # false
p({ a: "ant", b: "bear", c: "cat" }.include?(:a))     # true



## `Enumerable#partition`:
result =  [1, 2, 3].partition do |num|
            num.odd?
          end

p result  # [[1, 3], [2]]

