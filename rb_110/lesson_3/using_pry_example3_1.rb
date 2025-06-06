require 'pry'

def double_num(num)
  num * 2
end

arr = [1, 2, 3].map do |num|
  double_num(num)
  binding.pry
end

p arr

=begin
'pry' session:

$ ruby using_pry_example3_1.rb

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_1.rb:9 :

     4:   num * 2
     5: end
:...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_1.rb:9 :

     4:   num * 2
     5: end
     6: 
:...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_1.rb:9 :

     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
:...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_1.rb:9 :

     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
     8:   double_num(num)
:...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_1.rb:9 :

     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
     8:   double_num(num)
 =>  9:   binding.pry
:...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_1.rb:9 :

     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
     8:   double_num(num)
 =>  9:   binding.pry
    10: end
:...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_1.rb:9 :

     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
     8:   double_num(num)
 =>  9:   binding.pry
    10: end
    11: 
:...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_1.rb:9 :

     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
     8:   double_num(num)
 =>  9:   binding.pry
    10: end
    11: 
    12: p arr
:...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_1.rb:9 :

     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
     8:   double_num(num)
 =>  9:   binding.pry
    10: end
    11: 
    12: p arr

:...skipping...

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_1.rb:9 :

     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
     8:   double_num(num)
 =>  9:   binding.pry
    10: end
    11: 
    12: p arr

~
[1] pry(main)> quit

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_1.rb:9 :

     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
     8:   double_num(num)
 =>  9:   binding.pry
    10: end
    11: 
    12: p arr

[1] pry(main)> quit

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_1.rb:9 :

     4:   num * 2
     5: end
     6: 
     7: arr = [1, 2, 3].map do |num|
     8:   double_num(num)
 =>  9:   binding.pry
    10: end
    11: 
    12: p arr

[1] pry(main)> quit
[nil, nil, nil]
=end
