# What is output? Why?

numbers = [1, 2, 3, 4, 5]
counter = 0

loop do
  counter += 1               # 1 2 3 4 5 6
  next if counter.odd?       # next line is skips rest of the code in this iteration
  puts numbers[counter - 1]  # 2 4
  break if counter >= 5
end

# Output:
# 2
# 4
# (nothing)   

=begin

Iteration 1
loop do
  counter = 1
  1.odd? # true
  (skip the rest)
end

Iteration 2
loop do
  counter = 2
  2.odd? # false
  puts numbers[2-1] # value '2'
  2 >= 5 # false
end


Iteration 3
loop do
  counter = 3
  3.odd? # true
  (skip the rest)
end

Iteration 4
loop do 
  counter = 4
  4.odd? # false
  puts numbers[4-1]  # value `4`
end

Iteration 5
loop do
  counter = 5
  5.odd? # true
  (skip the rest)
end

Iteration 6
loop do
  counter = 6
  6.odd? # false
  puts numbers[6-1] # value `nil`
  6 >= 5
end

On line 3, a local variable `numbers` is initialized and 
reference an Array object with a collection of integers `[1, 2, 3, 4, 5]`.

Om line 4, a local variable `counter` is initialized and 
reference an integer object with a value of `0`. `counter` represents
the array's index, which starts at `0`.

On lines, 6 - 11, a `do..end` block is passed as an argument to 
the `loop` method invocation. The loop is running 6 times. At the 
beginning of each iteration, on line 7, `counter` is incremented by 1,
and is reassigned (`counter = counter + 1`). On line 8, if the value 
of `counter` is odd, the rest of the code is skipped (using `next` 
keyword) for this iteration. If not, lines 9 and 10 are evaluated.  

On line 9, in the `puts numbers[counter - 1]` call, the `[]` method 
invocation retrieves the value of the array. `[counter - 1]` retrieves 
the array's value preceding the value of the index representing by 
`counter`.

As arrays' index value, which is assigned to `counter` (line 4), starting 
with `0`, on the 5th iteration, when the `counter` is reassigned to 
`5`, the rest of the code is skipped and, `break if counter >= 5`,
on line 10, wasn't evaluated, executed and the looping hasn't stoped.

At the last iteration `counter` is `6`, which isn't odd, so on line 9
`numbers[counter - 1]` (`[6-1]`) is `5`. The array's value of index 
`5` is `nil`. So, `puts numbers[counter -1]` outputs a blank line 
to the console.

Fix:
=end

numbers = [1, 2, 3, 4, 5]
counter = 0

loop do
  break if counter >= 5
  counter += 1
  next if counter.odd?
  puts numbers[counter -1]
end

# Output:
# 2
# 4
