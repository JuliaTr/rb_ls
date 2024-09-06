=begin

# What value does a `while` loop return?
From Ruby documentation:
"The resultt of a `while` loop is `nil` unless `break` is 
used to supply a value"
=end
a = 0

while a < 10 do
  p a
  a += 1
end

p a
# The return value of the whole loop is `nil`.

=begin
irb(main):014:0> a = 0
=> 0
irb(main):015:1* while a < 10 
irb(main):016:1*   p a
irb(main):017:1*   a += 1
irb(main):018:0> end
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
irb(main):019:1* while a < 10
irb(main):020:1*   a
irb(main):021:1*   a += 1
irb(main):022:0> end
=> nil
irb(main):023:1* while a < 10 do
irb(main):024:1*   p a
irb(main):025:1*   a += 1
irb(main):026:0> end
=> nil
=end

# When `break` is used, then there would be a different 
# from `nil` output.
b = 7

while b          # which evaluates to true or truthy
  break 7
end
# => 7 
# Return value of the loop is an Integer object with a value `7`,
# which is an argument passed in the `break` statement.