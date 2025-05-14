# Exercise (basic​): What will be the output of the following code?
array = [1, 2, 3, 4, 5]
counter = 0

until counter >= array.size
  puts array[counter] * 2
  counter += 1
end

# Output:
# 2
# 4
# 6
# 8
# 10

=begin
Iteration 1:
`0 >= 5` is false
`2` is output

Iteration 2:
`1 >= 5` is false
`4` is output

Iteration 3:
`2 >= 5` is false
`6` is output

Iteration 4:
`3 >= 5` is false
`8` is output

Ieration 5:
`4 >= 5` is false
`10` is ouput

Iteration 6:
`5 >= 5` is true
exits the loop

=end
