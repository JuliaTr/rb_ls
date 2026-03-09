=begin
Write a method that takes an Array of numbers, and returns an 
Array with the same number of elements, and each element has 
the running total from the original Array.

A running total is the sum of all values in a list up to and 
including the current element. Thus, the running total when 
looking at index 2 of the array `[14, 11, 7, 15, 20]` is 
32 (14 + 11 + 7), while the running total at index 3 is 
47 (14 + 11 + 7 + 15).
=end

# ## Solution:
# def running_total(arr)
#   arr.map.with_index { |_, index| arr[0..index].sum }
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []
# # All test cases return `true`.




# ## Possible solution:
# def running_total(array)
#   sum = 0
#   array.map { |value| sum += value }
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []
# # All test cases return `true`.




# ## Further exploration:
# # `Enumerable#each_with_object` (idiomatic)
# def running_total(arr)
#   sum = 0
#   arr.each_with_object([]) do |value, result|
#     result << sum += value
#   end
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []
# # All test cases return `true`.




# `Enumerable#reduce` (`reduce(initial) { |memo, obj| ... }`):
# Option 1:
def running_total(arr)
  arr.reduce([]) do |result, value|
    last_total = result.last || 0
    result << last_total + value
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
# All test cases return `true`.


# # Option1: break down
# def running_total(arr)
#   arr.reduce([]) do |result, value|
#     p result.last # nil

#     last_total = result.last || 0
#     p last_total  # 0

#     result << last_total + value

#     break result  # [2]
#   end
# end

# p running_total([2, 5, 13]) #== [2, 7, 20]
# =begin
# nil
# 0
# [2]
# =end




# # To substitute `#sum`:
# def running_total(arr)
#   arr.map.with_index { |_, idx| arr[0..idx].reduce(:+) }
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []
# # All test cases return `true`.
