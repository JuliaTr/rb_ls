=begin
Locate the documentation for break, and determine what 
value break sets the return value to for the while loop.

From the documentation:
https://docs.ruby-lang.org/en/3.2/syntax/control_expressions_rdoc.html

"The result of a `while` loop is `nil` unless `break` is 
used to supply a value"
=end

a = 0

while a < 10 do
  p a
  a += 1
end

=begin
irb(main):042:0> a = 0
=> 0
irb(main):043:1* while a < 10 
irb(main):044:1*   p a
irb(main):045:1*   a += 1
irb(main):046:0> end
0
1                                                  
2                                                  
3                                                  
4                                                  
5                                                  
6                                                  
7                                                  
8                                                  
9                                                  
=> nil
=end


# When `break` is used, then there would be a different 
# from `nil` output.
b = 7

while b          # which evaluates to true or truthy
  break 7
end
# => 7 
=begin
irb(main):034:0> b = 7
=> 7
irb(main):035:1* while b
irb(main):036:1*   break 7
irb(main):037:0> end
=> 7
=end
# Return value of the loop is an Integer object with a value `7`,
# which is an argument passed in the `break` statement.


# If `break` statement doesn't have an argument, the return value
# of a `while` loop will be `nil`.
b = 7

while b
  break
end
=begin
irb(main):038:0> b = 7
=> 7
irb(main):039:1* while b
irb(main):040:1*   break
irb(main):041:0> end
=> nil
=end
