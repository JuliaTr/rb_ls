# Question 1: What happens if we try to initialize a Hash that 
# contains duplicate keys?

hsh = { a: 100, b: 200, c: 300, a: 400 }
p hsh

=begin
Output:
warning: key :a is duplicated and overwritten on line 4
{:b=>200, :c=>300, :a=>400}

The value for the second occurrence of the duplicate key 
overrites the value of the first occurrence.
=end
