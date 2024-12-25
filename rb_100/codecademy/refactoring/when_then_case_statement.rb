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
