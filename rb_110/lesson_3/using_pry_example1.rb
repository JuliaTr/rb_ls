require 'pry'

a = 1
b = 2
binding.pry
c = 3

=begin
`pry` session:

$ ruby using_pry.rb

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry.rb:5 :

    1: require 'pry'
    2: 
    3: a = 1
    4: b = 2
 => 5: binding.pry
    6: c = 3

[1] pry(main)> a
=> 1
[2] pry(main)> b
=> 2
[3] pry(main)> c
=> nil
[4] pry(main)> d
NameError: undefined local variable or method `d' for main:Object (NameError)
from (pry):4:in `<main>'
[5] pry(main)> quit
=end