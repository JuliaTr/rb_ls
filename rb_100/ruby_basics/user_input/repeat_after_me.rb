=begin
Write a program that asks the user to type something in, 
after which your program should simply display what was 
entered.
=end

puts '>> Type anything you want:'
answer = gets.chomp
puts answer

=begin
$ ruby repeat_after_me.rb
>> Type anything you want:
This is what I typed.
This is what I typed.
=end



## Possible solution:
puts '>> Type anything you want:'
answer = gets
puts answer

=begin
$ ruby repeat_after_me.rb
>> Type anything you want:
This is what I typed.
This is what I typed.
=end



### Experiments:
puts '>> Type anything you want:'
answer = gets
p answer

=begin
$ ruby repeat_after_me.rb
>> Type anything you want:
This is what I typed.
"This is what I typed.\n"
=end


puts '>> Type anything you want:'
answer = gets.chomp
p answer

=begin
$ ruby repeat_after_me.rb
>> Type anything you want:
This is what I typed.
"This is what I typed."
=end
