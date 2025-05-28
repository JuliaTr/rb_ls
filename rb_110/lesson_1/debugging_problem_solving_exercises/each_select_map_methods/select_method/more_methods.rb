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

