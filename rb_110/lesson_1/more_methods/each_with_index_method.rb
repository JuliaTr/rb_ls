# `Enumerable#each_with_index`
arr = [1, 2, 3]

arr.each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end

p arr

# Output:
# The index of 1 is 0.
# The index of 2 is 1.
# The index of 3 is 2.
# [1, 2, 3]



h = { a: "ant", b: "bear", c: "cat" }

h.each_with_index do |pair, index|
  puts "The index of #{pair} is #{index}."
end

p h

# Output:
# The index of [:a, "ant"] is 0.
# The index of [:b, "bear"] is 1.
# The index of [:c, "cat"] is 2.
# {:a=>"ant", :b=>"bear", :c=>"cat"}
