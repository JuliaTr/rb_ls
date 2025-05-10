# `Enumerable#partition`:
result = [1, 2, 3].partition do |num|
  num.odd?
end

p result  # [[1, 3], [2]]



odd, even = [1, 2, 3].partition do |num|
  num.odd?
end

p odd     # [1, 3]
p even    # [2]



h = { a: "ant", b: "bear", c: "cat" }
result = h.partition do |key, value|
  value.size > 3
end

p result   # [[[:b, "bear"]], [[:a, "ant"], [:c, "cat"]]]
