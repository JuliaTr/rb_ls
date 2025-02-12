=begin
The code provided has the following gives the error message:

TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

What is the problem and how can it be fixed?
=end

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

# 6.rb:13:in `[]=': no implicit conversion of String into Integer (TypeError)


=begin

What is the problem?

In Ruby, to access the value from the array, the `[]` method is used.
The `[]=` reassigns a new value on the place of the existed index. 
That's an index, not a value, should be placed in square brackets in 
the `[]=` so that to access the value for the reassignment.

How can it be fixed?
=end
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
p names   # ["bob", "joe", "susan", "jody"]
