# Exercise (basic): What will the following code output? 
array = [1, 2, 3, 4, 5]
new_array = []

array.each do |num|
  new_array << num if num.even?
end

p array       # [1, 2, 3, 4, 5]
p new_array   # [2, 4]
