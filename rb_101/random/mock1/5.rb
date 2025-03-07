# 5.  What will the following code output and return? Explain your reasoning.

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return "counted enough"
    end
  end
end

p count_sheep
# Output:
# 0
# 1
# 2
# "counted enough"

# Describe what's going on in this code snippet.
# Follow-up: What concept is displayed in this code snippet?

=begin
What will the following code output and return?

Output is `0`, `1`, `2`, `"counted enough"` on each line separately.
The return value is `"counted enough"`.

Describe what's going on in this code snippet.

On line 14, the `count_sheep` method is invoked returning 
`"counted enough"` explicitly. `"counted enough"` is passed
as an argument to the `p` method call to be output to the console.

On lines 5-12, the method is defined. In its body, the `do..end`
block with a parameter `sheep` is passed as an argument to the 
`times` invoked on an Integer object with a value of `5`. 

The loop runs 3 times from `0`, because on lines 8-10 there's an `if`
statement with a condition `sheep >= 2`. When `sheep >= 2` is 
truthy, `3 >= 2`, the code returns `"counted enough"`. The `return`
keyword returns `"counted enough"` explicitly from the method. 
The iteration has stopped and the program exits the loop and 
method definition.


Follow-up: What concept is displayed in this code snippet?

Concept is explicit return value, particularly with the `return`
keyword.
=end