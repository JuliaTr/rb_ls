# `Enumerable#partition`:
result = [1, 2, 3].partition do |num|
  num.odd?
end

p result  # [[1, 3], [2]]
