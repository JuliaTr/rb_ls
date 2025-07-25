# What will this code print?

5.step(to: 10, by: 3) { |value| puts value }

# Output:
# 5        # begins with self; first iteration
# 8        # interval of "step" value (5 + 3 = 8); second iteration

# On the last iteration the loop stops because `11 > 10`.
