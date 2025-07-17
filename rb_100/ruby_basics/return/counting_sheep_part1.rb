# What will the following code print? Why?

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# Output:
# 0
# 1
# 2
# 3
# 4
# 5

=begin
The output is `0 1 2 3 4 5` on a separate line respectively.

On line 9, the return value of `count_sheep` method is
passed as an argument to the `puts` method invocation outputing 
`5` to the console.

Lines 3-7 contain `count_sheep` method definition. In the method's
body the `do..end` block is passed as an argument to the `times`
mehod invoked an Integer object with a value of `5`. The`sheep` 
is a block's parameter and local variable. 

The `times` method returns an integer it is invoked on. The `times`
method iterates number of times as an integer's value. The `count_sheep`
method returns `5`. The block is executed 5 times due to 5 iterations. 

The `times` block is the only code and the last line in the method.

The `sheep` represents the count of the `times`. It starts with 
`0`. So, the `puts sheep` (line 5) outputs `0 1 2 3 4` when 
the `count_sheep` method is invoked.

That's why the ouput is `0 1 2 3 4 5`.
=end
