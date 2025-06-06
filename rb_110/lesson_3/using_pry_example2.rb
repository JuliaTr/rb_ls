require 'pry'

def my_method(num)
  a = 1
  binding.pry
  b = 2
end

c = 3

my_method(c)

=begin
'pry' session:

$ ruby using_pry_example2.rb

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example2.rb:5 Object#my_method:

    3: def my_method(num)
    4:   a = 1
 => 5:   binding.pry
    6:   b = 2
    7: end

[1] pry(main)> a
=> 1
[2] pry(main)> b
=> nil
[3] pry(main)> c
NameError: undefined local variable or method `c' for main:Object (NameError)
from (pry):3:in `my_method'
[4] pry(main)> quit
=end
