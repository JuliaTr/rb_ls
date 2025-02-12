=begin
Exercise:
What will the following programs return? What is the value of `arr` 
after each?
=end

# Snippet 1:
arr = ["b", "a"]

arr = arr.product(Array(1..3))
p arr   
# [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

arr.first.delete(arr.first.last)
p arr
# [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]


# Snippet 2:
arr = ["b", "a"]

arr = arr.product([Array(1..3)])
p arr
# [["b",[1, 2, 3]], ["a", [1, 2, 3]]

arr.first.delete(arr.first.last)
p arr   # [["b"], ["a", [1, 2, 3]]
