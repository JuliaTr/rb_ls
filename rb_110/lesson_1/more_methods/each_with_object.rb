# `Enumerable#each_with_object`
result = [1, 2, 3].each_with_object([]) do |num, array|
  array << num if num.odd?
end

p result   # [1, 3]



h = { a: "ant", b: "bear", c: "cat" }

result = h.each_with_object([]) do |pair, array|
  array << pair.last
end

p result  # ["ant", "bear", "cat"]



h = { a: "ant", b: "bear", c: "cat" }

result = h.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end

p result   # {"ant"=>:a, "bear"=>:b, "cat"=>:c}
