# `Enumerable#any?`:
result = { a: "ant", b: "bear", c: "cat" }.any? do |_, value|
  value.size > 4
end

p result # false