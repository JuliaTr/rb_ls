# Exercise (basic): What will the following code output? 
array = [1, 2, 3, 4, 5]
new_array = []

array.each do |num|
  new_array << num if num.even?
end

p array       # [1, 2, 3, 4, 5]
p new_array   # [2, 4]



# Exercise (intermediate): What will the following code output? 
hash = { a: 1, b: 2, c: 3, d: 4 }
result = {}

hash.each do |key, value|
  if value > 2
    result[key] = value * 2
  end
end

p hash    # {a=>1, b=>2, c=>3, d=>4}
p result  # {c=>6, d=>8}



# Exercise (advanced): What will the following code output? 
arr = [[1, 2], [3, 4], [5, 6]]

transformed = arr.map do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end

p arr          # [[1, 2], [3, 4], [5, 6]]
p transformed  # [[1], [3], [5]]
