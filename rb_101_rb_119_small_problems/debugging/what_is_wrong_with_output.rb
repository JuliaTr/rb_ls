=begin
Josh wants to print an array of numeric strings in reverse 
numerical order. However, the output is wrong. Without 
removing any code, help Josh get the expected output.
=end

arr = ["9", "8", "7", "10", "11"]
p arr.sort do |x, y|  # issue is here, block is passed to `p` method call
    y.to_i <=> x.to_i
  end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"]

# The same as:
arr = ["9", "8", "7", "10", "11"]
(p arr.sort) do |x, y|
  y.to_i <=> x.to_i
end
# Output: syntax error, unexpected `do', expecting end-of-input (SyntaxError)


## Bug fix:
arr = ["9", "8", "7", "10", "11"]
p(arr.sort do |x, y|
    y.to_i <=> x.to_i
  end)

# Output: ["11", "10", "9", "8", "7"]



## Possible solution:
# Option 1:
arr = ["9", "8", "7", "10", "11"]
p(
  arr.sort do |x, y|
    y.to_i <=> x.to_i
  end
)
# Output: ["11", "10", "9", "8", "7"]


# Option 2:
arr = ["9", "8", "7", "10", "11"]
p arr.sort { |x, y| y.to_i <=> x.to_i }
# Output: ["11", "10", "9", "8", "7"]
