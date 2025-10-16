=begin
Find and fix the bug, then explain why the buggy program 
printed the results it did.
=end

## Buggy code:
def my_method(array)
  if array.empty?
    []
  elsif      # condition is missiong (issue is here)
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

=begin
Output:
[]
nil
nil
nil
=end

=begin
Is expected to print:
[]
[21]
[9, 16]
[25, 36, 49]
=end


## Bug fix:
def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map { |value| value * value }
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

=begin
[]
[21]
[9, 16]
[25, 36, 49]
=end

=begin
Explanation:
On lines 13-16, there're `my_method` invocations with arrays 
`[]`, `[3]`, `[3, 4]`, `[5, 6, 7]` passed to them as arguments.

Arguments are bound with parameters.

Lines 1-11 contain a method definition with a parameter `array`.
Inside method definition's body, there's an `if/elsif/else` statement

The original solution prints: `[]`, `nil`, `nil`, `nil` for method 
invocations. 

The condition of each branch is checked one-b-one. If the condition is 
truthy, the code is executed in the branch.

The issues are on lines 4. The arrays as arguments in `my_method([3])` 
(line 14), `my_method([3, 4]) (line 15), `my_method([5, 6, 7])` 
invocations are not empty. `elsif` branch doesn't have a condition, so the program
looks for the conditional expression on the next line,
which is `array.map do |value|...` with the whole associated block, 
which is truthy. `map` returns an array, which is always a truthy value.
So, the `elsif` branch is executed, because the array isn't empty.
However, there's no code to execute for this conditional 
expression. So Ruby returns `nil`, when it cannot find a code to execute.
=end


## Experiments:
def my_method(array)
  if array.empty?
    []
  elsif array.map { |value| value * value }
  else
    [7 * array.first]
  end
end
p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

=begin
Output:
[]
nil
nil
nil
=end


def my_method(array)
  if array.empty?
    []
  elsif array.size == 1
    [7 * array.first]
  else
    array.map { |value| value * value }
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

=begin
[]
[21]
[9, 16]
[25, 36, 49]
=end


def my_method(array)
  if array.empty?
    []
  elsif
    [7 * array.first]
  else
    array.map { |value| value * value }
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

=begin
Output:
[]
nil
nil
nil
=end
