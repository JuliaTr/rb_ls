# `Enumerable#any?`:
result =  { a: "ant", b: "bear", c: "cat" }.any? do |_, value|
            value.size > 4
          end

p result # false



# `Enumerable#all?`:
result =  [1, 2, 3].all? do |num|
            num > 2
          end

p result # false


result =  { a: "ant", b: "bear", c: "cat" }.all? do |_, value|
            value.length >= 3
          end

p result  # true



# `Enumerable#each_with_index`:
result =  [1, 2, 3].each_with_index do |num, index|
            puts "The index of #{num} is #{index}"
          end

p result

# Output:
# The index of 1 is 0
# The index of 2 is 1
# The index of 3 is 2
# [1, 2, 3]
