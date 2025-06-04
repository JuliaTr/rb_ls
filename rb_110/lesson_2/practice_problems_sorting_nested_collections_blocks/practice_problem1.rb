=begin
Practice Problem 1:
How would you order this array of number strings by 
descending numeric value?
=end

arr = ['10', '11', '9', '7', '8']

result = arr.sort! do |a, b|
  b.to_i <=> a.to_i
end

p result  # ["11", "10", "9", "8", "7"]
p arr     # ["11", "10", "9", "8", "7"]



### Experiment:
p '10'.to_i  # 10



arr = [10, 11, 9, 7, 8]
result = arr.sort

p result  # [7, 8, 9, 10, 11]
p arr     # [10, 11, 9, 7, 8]



arr = [10, 11, 9, 7, 8]
result = arr.sort!

p result   # [7, 8, 9, 10, 11]
p arr      # [7, 8, 9, 10, 11]



arr = [10, 11, 9, 7, 8]
result = arr.sort do |a, b|
  a <=> b
end

p result # [7, 8, 9, 10, 11]
p arr    # [10, 11, 9, 7, 8]



arr = [10, 11, 9, 7, 8]
result = arr.sort! { |a, b| a <=>b }

p result   # [7, 8, 9, 10, 11]
p arr      # [7, 8, 9, 10, 11]



arr = [10, 11, 9, 7, 8]
result = arr.sort { |a, b| b <=> a }

p result   # [11, 10, 9, 8, 7]
p arr      # [10, 11, 9, 7, 8]
