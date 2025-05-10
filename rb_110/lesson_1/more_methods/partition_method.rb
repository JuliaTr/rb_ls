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
