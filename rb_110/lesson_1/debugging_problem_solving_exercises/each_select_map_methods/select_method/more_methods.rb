# `Enumerable#any?`:
result = { a: "ant", b: "bear", c: "cat" }.any? do |_, value|
  value.size > 4
end

p result # false



# `Enumerable#all?`:
result = [1, 2, 3].all? do |num|
  num > 2
end

p result # false
