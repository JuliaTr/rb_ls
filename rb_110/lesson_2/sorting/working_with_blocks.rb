## Example 1:
result =  [[1, 2], [3, 4]].each do |arr|
            puts arr.first
          end

p result

# Output:
# 1
# 3
# [[1, 2], [3, 4]]




## Example 2:
result =  [[1, 2], [3, 4]].map do |arr|
            puts arr.first
          end

p result

# Output:
# 1
# 3
# [nil, nil]




## Example 3:
result =  [[1, 2], [3, 4]].map do |arr|
            puts arr.first
            arr.first
          end

p result 

# Output:
# 1
# 3
# [1, 3]




## Example 4:
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

p my_arr

# Output:
# 18
# 7
# 12
# [[18, 7], [3, 12]]




## Example 5:
result = [[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

p result # [[2, 4], [6, 8]]




## Example 6:
arr = [{ a: 'ant', b: 'elephant' }, { c: 'cat' }]
result = arr.select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end

p result # [{:c=>"cat"}]



### Experiments:
arr = [{ a: 'ant', b: 'elephant' }, { c: 'cat' }]
result = arr.select do |hash|
  sub_result = hash.all? do |key, value|
    value[0] == key.to_s
  end
  p sub_result  # just to output `all?` return value
end

p result

# Output:
# false
# true
# [{:c=>"cat"}]


arr = [{ a: 'ant', b: 'elephant' }, { c: 'cat' }]
result = arr.select do |hash|
  hash.any? do |key, value|
    value[0] == key.to_s
  end
end

p result # [{:a=>"ant", :b=>"elephant"}, {:c=>"cat"}]




## Example 7:
arr = [
  ['1', '8', '11'], ['2', '6', '13'], 
  ['2', '12', '15'], ['1', '8', '9']
]

p arr.sort 
# [["1", "8", "11"], ["1", "8", "9"], ["2", "12", "15"], 
# ["2", "6", "13"]]



arr = [
  ['1', '8', '11'], ['2', '6', '13'], 
  ['2', '12', '15'], ['1', '8', '9']
]

result = arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end

p result 
# [["1", "8", "9"], ["1", "8", "11"], ["2", "6", "13"], 
# ["2", "12", "15"]]




## Example 8:
arr = [[8, 13, 27], ['apple', 'banana', 'cantaloupe']]
result = arr.map do |arr|
  arr.select do |item|
    if item.to_s.to_i == item  # if it's an integer
      item > 13
    else
      item.size < 6
    end
  end
end

p result # [[27], ["apple"]]




## Example 9:
arr = [
  [[1], [2], [3], [3], [4]],
  [['a'], ['b'], ['c']]
]

result = arr.map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end

p result
# [[[1], [2], [3], [3], [4]], [["a"], ["b"], ["c"]]]




## Example 10:
arr = [
  [[1, 2], [3, 4]], 
  [5, 6]
]

result = arr.map do |arr|
  arr.map do |el|
    if el.to_s.to_i == el
      el + 1
    else
      el.map do |n|
        n + 1
      end
    end
  end
end

p result # [[[2, 3], [4, 5], [6, 7]]




### Do NOT mutate collections while iterating:
# removes all even numbers from the array passed in as an argument
def remove_evens!(arr)
  arr.each do |num|
    if num % 2 == 0
      arr.delete(num)
    end
  end
  arr
end

p remove_evens!([1, 1, 2, 3, 4, 6, 8, 9])
# expected return value [1, 1, 3, 9]
# actual return value [1, 1, 3, 6, 9]


# Bug fix:
def remove_evens!(arr)
  cloned_arr = arr.dup

  cloned_arr.each do |num|
    if num % 2 == 0
      arr.delete(num)
    end
  end

  arr
end

p remove_evens!([1, 1, 2, 3, 4, 6, 8, 9])  # [1, 1, 3, 9]
# Works as expected
