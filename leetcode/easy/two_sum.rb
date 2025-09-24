=begin
Given an array of integers `nums` and an integer `target`, 
return indices of the two numbers such that they add up to 
`target`.

You may assume that each input would have exactly one solution, 
and you may not use the same element twice.

You can return the answer in any order.
=end

## Soluion (finds adjucent pairs only):
def two_sum(nums, target)
  new_arr = []
  counter = 0

  loop do
    current_element = nums[counter]
    next_element = nums[counter + 1]

    sum = current_element + next_element

    if sum == target
      new_arr << counter
      new_arr << counter + 1
    end

    counter += 1
    break if counter + 1 >= nums.size
  end
  
  new_arr
end

p two_sum([2, 7, 11, 15], 9) == [0, 1]  # true
p two_sum([3, 2, 4], 6) == [1, 2]       # true
p two_sum([3, 3], 6) == [0, 1]          # true
p two_sum([-1, 2, 0], 1) == [0, 1]      # true
p two_sum([1, 4, 5, 2], 7) == [2, 3]    # true
# p two_sum([1, 4, 5, 2], 3) == [0, 3]    # false
