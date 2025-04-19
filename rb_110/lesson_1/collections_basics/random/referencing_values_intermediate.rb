=begin
Exercise (intermediate)​: For each of these nested collections, write code 
to access the number `42`:
=end

collection_1 = { 
  outer: [{a: 1}, {b: 2, c: [3, 4, {d: 42}]}]
}

p collection_1[:outer][1][:c][2][:d]   # 42
