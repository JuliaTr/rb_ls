# Exercise (advanced): What will the following nested `each_with_object` return?
nested_arr = [{ a: 1 }, { b: 2, c: 3 }, { d: 4, e: 5 }]

new_h = nested_arr.each_with_object({}) do |hash, result|
  hash.each_with_object([]) do |(key, value), inner_array|
    result[key] = inner_array << value * 2
  end
end

p new_h  
# {:a=>[2], :b=>[4, 6], :c=>[4, 6], :d=>[8, 10], :e=>[8, 10]}



# Exercise (advanced): Determine the output of this multi-level 
# `each_with_object`:
nested_arr = [[1, 2], [3, 4], [5, 6]]

result = nested_arr.each_with_object({}) do |arr, hash|
  arr.each_with_object(hash) do |num, h|
    if num.odd?
      h[num] = []
    else
      h[arr.first] << num if h[arr.first]
    end
  end
end

p result  # {1=>[2], 3=>[4], 5=>[6]}
