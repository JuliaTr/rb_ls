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
