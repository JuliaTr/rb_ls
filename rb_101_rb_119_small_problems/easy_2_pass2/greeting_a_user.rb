=begin
Write a program that will ask for user's name. The program 
will then greet the user. If the user writes "name!" then the 
computer yells back to the user.
=end

# `String#chomp` (non-destructive):
print 'What is your name? '
name = gets.chomp

if name.include?('!')
  puts "HELLO #{name.chomp('!').upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

p name

=begin
$ ruby greeting_a_user.rb
What is your name? Bob
Hello Bob.
"Bob"

$ ruby greeting_a_user.rb
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
"Bob!"
=end



## Possible solution:
# `String#chop` (non-destructive):
print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

p name

=begin
$ ruby greeting_a_user.rb
What is your name? Bob
Hello Bob.
"Bob"

$ ruby greeting_a_user.rb
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
"Bob"
=end



## Further exploration:
# `String#chop!` (destructive):
print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

p name

=begin
Tested only `if` branch:

$ ruby greeting_a_user.rb
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
"Bob"
=end



# `String#chomp!` (destructive):
print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chomp!('!')
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

p name

=begin
Tested only `if` branch:

$ ruby greeting_a_user.rb
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
"Bob"
=end
