# Exercise (intermediate)​: What will be the final value of 
# `sum` after this code executes?
numbers = [2, 5, 8, 11, 14]
index = 0
sum = 0

until index == numbers.size
  sum += numbers[index] if numbers[index] % 2 == 0
  index += 1
end

p sum  # 24

=begin
sum = sum + number[index]

Iteration 1:
2 = 0 + 2 if 2 % 2 == 0
now `sum` is `2`

Iteration 2:
sum += number[index] if numbers[index] % 2 == 0  # isn't executed
`sum` is still `2`

Iteration 3:
10 = 2 + 8 if 8 % 2 == 0
now `sum` is `10`

Iteration 4:
sum += number[index] if number[index] % 2 == 0  # isn't executed
`sum` is sill `10`

Iteration 5:
24 = 10 + 14 if 14 % 2 == 0
now `sum` is `24`
=end
