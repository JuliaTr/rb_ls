# Predict output.

# Snippet 1:
def countdown(start)
  puts start              
  if start > 0
    countdown(start - 1)
  else
    puts "Blast off!"
  end
end

countdown(5)

# Output:
# 5
# 4
# 3
# 2
# 1
# 0
# Blast off!


### Experiments:
# loop-based version:
def countdown(start)
  current = start
  loop do
    puts current
    break if current <= 0
    current -= 1
  end
  puts "Blast off!"
end

countdown(5)

# Output:
# 5
# 4
# 3
# 2
# 1
# 0
# Blast off!


def countdown(start)
  current = start
  loop do
    puts current
    if current <= 0
      puts "Blast off!"
      break
    else
      current -= 1
    end
  end
end

countdown(5)

# Output:
# 5
# 4
# 3
# 2
# 1
# 0
# Blast off!



# Snippet 2:
def sum_to(n)
  puts n
  if n > 1
    n + sum_to(n - 1)  # 5 + sum_to(4); transition to `sum_up(4)` happens here
  else
    n
  end
end

p sum_to(5)

# Output:
# 5
# 4
# 3
# 2
# 1
# 15

=begin
1. Call to `sum_to(5)` 
2. Outputs `5`.
3. Since `5 > 1`, it executes the `if` block.
4. In `n + sum_to(n - 1)` it need to evaluate `sum_to(n -1)`, which 
  is `sum_to(4)`.
5. At this moment "pauses" the current execution of `sum_to(5)` and 
starts a new execusion of `sum_to(4)`.

Each recursive call adds a new frame to the stack. Us the recursion 
unwinds, these frames are popped off the stack. And the paused calculations
are resumed.

So, the sum of all values of `n` as a result of each recursive call
is calculated, when the paused calculations resumed.
=end