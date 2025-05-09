# Exercise (intemediate): What will the following code return?
hash = { 'a' => 10, 'b' => 20, 'c' => 30 }

new_h = hash.each_with_object({}) do |(key, value), result|
  result[value.to_s] = key.upcase if value > 15
end

p new_h   # { "20"=>"B", "30"=>"C"}



# Exercise (intemediate): Determine the output of this code:
nested_arr = [[1, 2], [3, 4], [5, 6]]

new_arr = nested_arr.each_with_object([]) do |arr, result|
  result << arr.first if arr.last.even?
  result << arr.last if arr.first.odd?
end

p new_arr   # [1, 2, 3, 4, 5, 6]



# Exercise (advanced): What does this nested each_with_object return?
nested_arr = [['a', 1], ['b', 2], ['c', 3]]

result = nested_arr.each_with_object({}) do |(letter, num), hash|
  hash[letter] = num
  hash[num] = letter if num.odd?
end

p result   # {"a"=>1, 1=>"a", "b"=>2, "c"=>3, 3=>"c"}
