=begin
Practice Problem 4
For each of these collection objects where the value `3` occurs, 
demonstrate how you would change this to `4`.
=end

# ## Example 1:
arr1 = [1, [2, 3], 4]

# Non-destructive:
result = arr1.map do |element|
  if element.to_s.to_i != element

    element.map do |sub_element|
      if sub_element == 3
        sub_element = 4
      else
        sub_element
      end
    end

  else
    element
  end

end

p result   # [1, [2, 4], 4]
p arr1     # [1, [2, 3], 4]



## Alternative:
# Destructive:
p arr1[1][1] = 4  # 4
p arr1            # [1, [2, 4], 4]
