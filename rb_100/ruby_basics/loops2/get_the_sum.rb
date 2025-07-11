=begin
The code below asks the user `"What does 2 + 2 equal?"` and 
uses `#gets` to retrieve the user's answer. Modify the code 
so `"That's correct!"` is printed and the loop stops when 
the user's answer equals `4`. Print `"Wrong answer. Try again!"` 
if the user's answer doesn't equal `4`.
=end
loop do
  puts "What does 2 + 2 equal?"
  answer = gets.chomp.to_i
end


## Solution:
loop do
  puts "What does 2 + 2 equals?"
  answer = gets.chomp.to_i

  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end
end

=begin
$ ruby get_the_sum.rb
What does 2 + 2 equals?
3
Wrong answer. Try again!
What does 2 + 2 equals?
4
That's correct!
=end



### Possible solution:
loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i

  if answer == 4
    puts "That's correct!"
    break
  end

  puts 'Wrong answer. Try again!'
end

=begin
$ ruby get_the_sum.rb
What does 2 + 2 equals?
5
Wrong answer. Try again!
What does 2 + 2 equals?
4
That's correct!
What does 2 + 2 equal?
=end
