=begin
The following code prompts the user to set their own password 
if they haven't done so already, and then prompts them to login 
with that password. However, the program throws an error. 
What is the problem and how can you fix it?

Once you get the program to run without error, does it behave 
as expected? Verify that you are able to log in with your new 
password.
=end

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password   # missed parameter
  puts '**Login**'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password          # messed `password` reassignment
  set_password
end

verify_password       # missed argument

=begin
$ ruby password.rb
What would you like your password to be?
12345
**Login**
Password: 12345
password.rb:25:in `verify_password': undefined local variable or method `password' for main:Object (NameError)

  if input == password
=end



## Bug fix:
password = nil

def set_password
  puts 'What would you like your password to be?'
  gets.chomp
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed'
  end
end

password = set_password if !password

verify_password(password)
=begin
$ ruby password.rb
What would you like your password to be?
12345
** Login **
Password: 12345
Welcome to the inside!
=end


## Possible solution:
password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Enter your password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)
=begin
$ ruby password.rb
What would you like your password to be?
12345
** Login **
Enter your password: 12345
Welcome to the inside!
=end
