# Given the following code, invoke a destructive method on `greeting` so that 
# `Goodbye!` is printed instead of `Hello!`.

greeting = 'Hello!'
puts greeting   # Hello!



## Solution:

# Option 1:
# `String#gsub!`:
greeting = 'Hello!'
greeting.gsub!(greeting[0..4], 'Goodbye')
puts greeting   # Goodbye!

# Option 2:
# `#[]=`
greeting = 'Hello!'
greeting[0..4] = 'Goodbye'
puts greeting   # Goodbye!



## Possible solution:
greeting = 'Hello!'
greeting.gsub!('Hello', 'Goodbye')
puts greeting    # Goodbye!


## Experiment:
greeting = 'Hello!'
puts greeting.gsub('Hello', 'Goodbye')  # Goodbye!
puts greeting    # Hello!
