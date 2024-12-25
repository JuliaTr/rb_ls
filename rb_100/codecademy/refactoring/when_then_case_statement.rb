puts "Hello there! What's your language?"
greeting = gets.chomp

case greeting
when 'English' then puts 'Hello!'
when 'French'  then puts 'Bonjour!'
when 'German'  then puts 'Guten Tag!'
when 'Finnish' then puts 'Haloo'
else                puts "I don't know that language!"
end

=begin
$ ruby when_then_case_statement.rb
Hello there! What's your language?
Finnish
Haloo
=end



# Exercise:
puts "What's your favorite programming language?"
language = gets.chomp.upcase

case language
when 'RUBY'       then puts 'Ruby is great for web apps!'
when 'PYTHON'     then puts 'Python is great for science.'
when 'JAVASCRIPT' then puts 'JavaScript makes websites awesome.'
when 'HTML'       then puts 'HTML is what websites are made of!'
when 'CSS'        then puts 'CSS makes websites pretty.'
else                   puts "I don't know that language!"
end
