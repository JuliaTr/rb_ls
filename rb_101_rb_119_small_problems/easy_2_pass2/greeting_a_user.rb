=begin
Write a program that will ask for user's name. The program 
will then greet the user. If the user writes "name!" then the 
computer yells back to the user.
=end
print 'What is your name? '
name = gets.chomp

if name.include?('!')
  puts "HELLO #{name.chomp('!').upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

=begin
$ ruby greeting_a_user.rb
What is your name? Bob
Hello Bob.

$ ruby greeting_a_user.rb
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
=end



## Possible solution:
print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

=begin
$ ruby greeting_a_user.rb
What is your name? Bob
Hello Bob.

$ ruby greeting_a_user.rb
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
=end
