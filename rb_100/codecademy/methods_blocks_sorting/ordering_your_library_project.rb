def alphabetize(arr, reversed = false)
  arr.sort!
  if reversed
    arr.reverse!
  else
    arr
  end
end

numbers = [5, 1, 3, 8]
puts alphabetize(numbers)
puts alphabetize(numbers, true)

# Output:
# 1
# 3
# 5
# 8
# 8
# 5
# 3
# 1
