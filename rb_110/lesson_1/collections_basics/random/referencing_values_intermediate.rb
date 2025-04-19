=begin
Exercise (intermediate)​: For each of these nested collections, write code 
to access the number `42`:
=end

collection_1 = { 
  outer: [{a: 1}, {b: 2, c: [3, 4, {d: 42}]}]
}

p collection_1[:outer][1][:c][2][:d]   # 42



collection_2 = [ 
  [{first: [:alpha, :beta]}, {second: [10, 20, 30, 40, 42]}], 
  ["string"]
]

p collection_2[0][1][:second][4]  # 42



collection_3 = {
  animals: {
    mammals: {primates: 42, felines: ['lion', 'tiger']}
  }
}

p collection_3[:animals][:mammals][:primates] # 42
