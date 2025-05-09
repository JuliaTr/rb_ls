# `Enumerable#include?`:
arr = [1, 2, 3]
p arr.include?(1)    # true
p arr                # [1, 2, 3]



h = { a: "ant", b: "bear", c: "cat" }
p h.include?("ant")   # false
p h.include?(:a)      # true

p h.key?(:b)          # true
p h.has_key?(:c)      # true

p h.value?("bear")    # true
p h.value?("cat")     # true

p h.values.include?("ant")   # true
