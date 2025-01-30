=begin
These challenges are hard level compleity to identify the 
output before running the program. The contain `loop` method, 
method definitions, and flow control without other loop constructs.
=end

# Snippet 1:
def mystery_sequence(start, limit)
  sequence = [start]  # [2]
  current = start     # 2
  previous = nil

  loop do
    break if sequence.length >= limit

    if previous.nil?
      new_value = current * 2   # 1. 4
    else
      new_value = current + previous     # 2. 6   # 3. 10   # 4. 16   # 5. 26   # 6. 42   # 7. 68
    end

    sequence << new_value   # 1. [2, 4]   # 2. [2, 4, 6]    # 3. [2, 4, 6, 10]  # 4. [2, 4, 6, 10, 16]  # 5. [2, 4, 6, 10, 16, 26]   # 6. [2, 4, 6, 10, 16, 26, 42]  
    previous = current      # 1. 2        # 2. 4            # 3. 6              # 4. 10                 # 5. 16                      # 6. 26
    current = new_value     # 1. 4        # 3. 6            # 3. 10             # 4. 16                 # 5. 26                      # 6. 42
  end

  sequence
end

result = mystery_sequence(2, 8)
p result
# [2, 4, 6, 10, 16, 26, 42, 68]

p result.join(', ')
# "2, 4, 6, 10, 16, 26, 42, 68"

puts result.join(', ')
# 2, 4, 6, 10, 16, 26, 42, 68
