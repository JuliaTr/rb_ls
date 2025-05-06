# `Enumerable#any?`
result = [1, 2, 3].any? do |num|
  num > 2
end

p result   # true



result = { a: "ant", b: "bear", c: "cat" }. any? do |key, value|
  value.size > 4
end

p result # false