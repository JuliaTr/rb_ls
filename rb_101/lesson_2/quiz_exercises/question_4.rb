a = 2
b = rand(2)
a *= b       # a = a * b

if a = 2     # issue is here
  puts 'Two'
else
  puts 'Not Two'
end

# Output: 
# question_4.rb:5: warning: found `= literal' in conditional, should be ==
# Two



## Bug fix
a = 2
b = rand(2)
p b

a *= b
p a

if a == 2
  puts 'Two'
else
  puts 'Not Two'
end

=begin
$ ruby question_4.rb
1
2
Two
$ ruby question_4.rb
0
0
Not Two
=end
