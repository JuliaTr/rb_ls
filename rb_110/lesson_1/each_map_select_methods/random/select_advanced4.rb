# Identify the return value of the `#select` method
arr = [['a', 1], ['b', 'two'], ['c', 3], ['d', 4]]

result = arr.select do |sub_arr|
  if sub_arr[1].is_a?(Integer)
    sub_arr[1] > 2
  else
    sub_arr[0] > 'a'
  end
end

p result   # [["b", "two"], ["c", 3], ["d", 4]]
