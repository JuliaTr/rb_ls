=begin
Print all odd numbers from 1 to 99, inclusive, with each number 
on a separate line.
=end

# Provided solution:
value = 1
while value <= 99
  puts value
  value += 2
end

=begin
1
3
5
...
89
91
93
95
97
99
=end



# Code review for Ursula's solution:
i = 1
while i < 99      # issue is here
  if i % 2 == 1
    puts i
  end
  i = i + 1
end

=begin
1
3
5
...
89
91
93
95
97
=end

=begin
Code review:
*Does the solution meet the problem requirements?*
The solution doesn't meet a requirement, because the condition 
`i < 99` excludes the last number `99`.

```ruby
number = 1

while number <= 99
  puts number if number.odd?
  number += 1
end
```

*Is the code readable and easy to understand?*
The code is readable an easy to understand.

*Do variable and method names adhere to Ruby naming conventions?
Are the variable and method names meaningful and precise?*
While the variable `i` is a common name for a value during 
looping or iteration, I'd suggest using a clearer name like `number`.

*Is the code formatted correctly and free of syntax errors?*
No syntax errors.

*Is the solution repetitive or overly complex?*
The solution isn't repetitive or overly complex. However,
I'd suggest to use if-modifier for a single-line body like:
`puts i if i % 2 == 1`

*Would it make more sense to use different looping or conditional 
structures?*
While it's okay to use a `while` loop. As an option it possible to use `#each` method invoked on a Range
object:
`(1..99).step(2) { |number| puts number }` which provides a correct
output and is more idiomatic.

*Would the solution benefit from helper methods?*
There's no need to use a helper method because the problem is small.

*Consider running the code through Rubocop and discussing any 
issues raised.*
Rubocop has 3 complaints. It recommends using if-modifier, `Integer#odd?`,
self-assignment shorthand `+=`.
```ruby
puts number if number.odd?
```

```ruby
number += 1
```
=end



# Testing alternative solution:
(1..99).each { |i| puts i if i % 2 == 1 }

=begin
1
3
5
7
...
89
91
93
95
97
99
=end


(1..99).step(2) { |number| puts number}

=begin
1
3
5
7
...
89
91
93
95
97
99
=end


number = 1

while number <= 99
  puts number if number.odd?
  number += 1
end

=begin
1
3
5
7
...
89
91
93
95
97
99
=end