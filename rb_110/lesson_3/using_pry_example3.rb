require 'pry'

def double_num(num)
  num * 2
end

arr = [1, 2, 3].map do |num|
  binding.pry
  double_num(num)
end

p arr  # [2, 4, 6]

=begin
`pry` session:

$ ruby using_pry_example3.rb

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3.rb:8 :

     3: def double_num(num)
     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
 =>  8:   binding.pry
     9:   double_num(num)
    10: end
    11: 
    12: p arr  # [2, 4, 6]

[1] pry(main)> num
=> 1
[2] pry(main)> quit

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3.rb:8 :

     3: def double_num(num)
     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
 =>  8:   binding.pry
     9:   double_num(num)
    10: end
    11: 
    12: p arr  # [2, 4, 6]

[1] pry(main)> num
=> 2
[2] pry(main)> quit

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3.rb:8 :

     3: def double_num(num)
     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
 =>  8:   binding.pry
     9:   double_num(num)
    10: end
    11: 
    12: p arr  # [2, 4, 6]

[1] pry(main)> num
=> 3
[2] pry(main)> quit
[2, 4, 6]
=end

=begin
From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3.rb:8 :

     3: def double_num(num)
     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
 =>  8:   binding.pry
     9:   double_num(num)
    10: end
    11: 
    12: p arr  # [2, 4, 6]
    13: 

~
[1] pry(main)> num = 10   # num is reassigned
=> 10
[2] pry(main)> num
=> 10
[3] pry(main)> quit

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3.rb:8 :

     3: def double_num(num)
     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
 =>  8:   binding.pry
     9:   double_num(num)
    10: end
    11: 
    12: p arr  # [2, 4, 6]
    13: 

[1] pry(main)> num
=> 2
[2] pry(main)> quit

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3.rb:8 :

     3: def double_num(num)
     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
 =>  8:   binding.pry
     9:   double_num(num)
    10: end
    11: 
    12: p arr  # [2, 4, 6]
    13: 

[1] pry(main)> quit
[20, 4, 6]
=end