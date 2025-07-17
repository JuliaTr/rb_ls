# What will the following code print? Why?
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

# Output:
# 0
# 1
# 2
# nil

=begin
The output is `0 1 2 nil`.

On line 11, the return value of the `count_sheep` method is
passed as an argument to the `p` method outputing `nil` to
the console. 

Lines 2-9 contain `count_sheep` method definition with the 
`do...end` block passed to the `times` method invoked on an 
Integer object with a value of `5`. The `sheep` is the block's
parameter and local variable. 

The `time` method iterates 5 times and it returns `5`. However,
its return value isn't used here. 

On line 4, the `puts sheep` outputs only `0 1 2`, because when 
the `if` statement condition `sheep >= 2` (line 5) is true the 
iteration stops because of the `return` keyword on line 6. 
`return` not only stops the iteration, but returns a value being 
on the same line to the method explicitly. Here, `return` returns
`nil` because it daesn't have any meaningful value to return.

That's why the output is `0 1 2 nil`.
=end
