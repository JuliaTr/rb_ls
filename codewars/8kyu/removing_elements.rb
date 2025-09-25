=begin
Take an array and remove every second element from the array. 
Always keep the first element and start removing with the next 
element.

Example:
["Keep", "Remove", "Keep", "Remove", "Keep", ...] --> ["Keep", "Keep", "Keep", ...]
=end

## Solution:
def remove_elements(arr)
  new_arr = []

  arr.each_with_index do |el, index|
    new_arr << el if index.even?
  end

  new_arr
end

p remove_elements(["Keep", "Remove", "Keep", "Remove", "Keep"]) == ["Keep", "Keep", "Keep"]
# true



## Experiments:
def remove_every_other(arr)
  arr.select.with_index do |el, index|
    el if index.even?
  end
end

p remove_every_other(["Keep", "Remove", "Keep", "Remove", "Keep"]) == ["Keep", "Keep", "Keep"]
# true
