=begin
Given an array of integers `nums` and an integer `target`, 
return indices of the two numbers such that they add up to 
`target`.

You may assume that each input would have exactly one solution, 
and you may not use the same element twice.

You can return the answer in any order.

____________________________________________________________

[1, 4, 5, 2], target 7:
All pairs: [1, 4], [1, 5], [1, 2], [4, 5], [4, 2], [5, 2]
5 + 2 = 7


- "you may not use the same element twice" means that I cannot 
  compare an element with itself.
=end

## More improved solution:
def two_sum(nums, target)
  counter = 0
  next_counter = counter + 1

  loop do
    current_element = nums[counter]
    next_element = nums[next_counter]

    sum = current_element + next_element

    # As soon as the indices are found, add them to `new_arr` 
    # and exit the loop (`return`).
    if sum == target
      # Returns new array right away.
      return [counter, next_counter]
    end

    break if counter == nums.length - 1

    next_counter += 1
    
    if next_counter == nums.length
      counter += 1
      next_counter = counter + 1
    end
  end
end

p two_sum([2, 7, 11, 15], 9) == [0, 1]  # true
p two_sum([3, 2, 4], 6) == [1, 2]       # true
p two_sum([3, 3], 6) == [0, 1]          # true
p two_sum([-1, 2, 0], 1) == [0, 1]      # true
p two_sum([1, 4, 5, 2], 7) == [2, 3]    # true
p two_sum([1, 4, 5, 2], 3) == [0, 3]    # true



## Improved solution:
# Finds all pairs.
def two_sum(nums, target)
  new_arr = []
  counter = 0
  next_counter = counter + 1

  loop do
    current_element = nums[counter]
    next_element = nums[next_counter]

    sum = current_element + next_element

    if sum == target
      new_arr << counter
      new_arr << next_counter
    end

    next_counter += 1

    break if sum == target || next_counter.nil?
    
    if next_counter == nums.length
      counter += 1
      next_counter = 2
    end
  end
  
  new_arr
end

p two_sum([2, 7, 11, 15], 9) == [0, 1]  # true
p two_sum([3, 2, 4], 6) == [1, 2]       # true
p two_sum([3, 3], 6) == [0, 1]          # true
p two_sum([-1, 2, 0], 1) == [0, 1]      # true
p two_sum([1, 4, 5, 2], 7) == [2, 3]    # true
p two_sum([1, 4, 5, 2], 3) == [0, 3]    # true

=begin
Debugging practices:
p two_sum([1, 4, 5, 2], 7):

# pair 1: [1, 4]
counter: 0
current_element: 1
next_counter: 2
next_element: 4

# pair 2: [1, 5]
counter: 0
current_element: 1
next_counter: 3
next_element: 5

# pair 3: [1, 2] 
counter: 1        # issue is here, `counter` is incremented earlier
current_element: 4
next_counter: 4
next_element: 2
=end



## Solution (finds adjucent pairs only):
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
