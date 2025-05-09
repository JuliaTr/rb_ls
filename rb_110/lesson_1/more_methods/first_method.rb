# `Enumerable#first`:
arr = [1, 2, 3]
p arr.first   # 1
p arr         # [1, 2, 3]



h = { a: "ant", b: "bear", c: "cat" }
p h.first(2)    # [[:a, "ant"], [:b, "bear"]]
p h             # {:a=>"ant", :b=>"bear", :c=>"cat"}
