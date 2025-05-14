# Exercise (basic)​: What will the following code output?
array = [1, 2, 3, 4, 5]
sum = 0

for num in array
  sum += num if num.odd?   # sum = sum + num
end

puts sum  # 9
