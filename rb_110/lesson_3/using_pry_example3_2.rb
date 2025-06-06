require 'pry'

def double_num(num)
  num * 2
end

arr = []

[1, 2, 3].each do |num|
  arr << double_num(num)
  binding.pry
end

p arr

=begin
'pry' session:

$ ruby using_pry_example3_2.rb

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_2.rb:11 :

     6: 
     7: arr = []
     8: 
     9: [1, 2, 3].each do |num|
    10:   arr << double_num(num)
 => 11:   binding.pry
    12: end
    13: 
    14: p arr

[1] pry(main)> arr
=> [2]
[2] pry(main)> quit

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_2.rb:11 :

     6: 
     7: arr = []
     8: 
     9: [1, 2, 3].each do |num|
    10:   arr << double_num(num)
 => 11:   binding.pry
    12: end
    13: 
    14: p arr

[1] pry(main)> arr
=> [2, 4]
[2] pry(main)> quit

From: /Users/julia/Desktop/rb_ls/rb_110/lesson_3/using_pry_example3_2.rb:11 :

     6: 
     7: arr = []
     8: 
     9: [1, 2, 3].each do |num|
    10:   arr << double_num(num)
 => 11:   binding.pry
    12: end
    13: 
    14: p arr

[1] pry(main)> arr
=> [2, 4, 6]
[2] pry(main)> quit
[2, 4, 6]
=end
