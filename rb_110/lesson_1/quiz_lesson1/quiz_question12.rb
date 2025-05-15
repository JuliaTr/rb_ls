# # Question 12:
# result = ['a', 'b', 'c'].select do |item|
#   puts item  # => nil
# end

# p result 

# # Output:
# # a
# # b
# # c
# # []



# ## Experiments:
# result = ['a', 'b', 'c'].each do |item|
#   puts item
# end

# p result

# # Output:
# # a
# # b
# # c
# # ["a", "b", "c"]


result = ['a', 'b', 'c'].map do |item|
  puts item
end

p result

# Output:
# a
# b
# c
# [nil, nil, nil]
