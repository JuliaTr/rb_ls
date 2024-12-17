puts "Text to search through:"
text = gets.chomp

puts "Word to redact:"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word == redact
    print "REDACTED "
  else
    print word + " "
  end
end

=begin
$ ruby redacted_project.rb
Text to search through:
Hi there
Word to redact:
Hi
REDACTED there $ 
=end




# What could you do to make sure your redactor redacts a word regardless 
# of whether it’s upper case or lower case?
puts "Text to search through:"
text = gets.chomp
p text

puts "Word to redact:"
redact = gets.chomp
p redact

words = text.split(" ")
p words

words.each do |word|
  if word.casecmp?(redact)   # `casecmp?` ignores the case
    print "REDACTED "
  else
    print word + " "
  end
end

=begin
$ ruby redacted_project.rb
Text to search through:
Hi there
"Hi there"
Word to redact:
hi
"hi"
["Hi", "there"]
REDACTED there $
=end



# How could you make your program take multiple, separate words to
# REDACT?
puts "Text to search through:"
text = gets.chomp

puts "Word to redact:"
redact = gets.chomp

words = text.split(" ")
redacted_words = redact.split(" ")

words.each do |word|
  redacted_words.each do |redacted_word|
    if word.casecmp?(redacted_word)
      print "REDACTED "
    end
  end
end

=begin
$ ruby redacted_project.rb
Text to search through:
Hi there
Word to redact:
Hi there
REDACTED REDACTED $ 
=end



# How might you make a new redacted string and save it as a variable, 
# rather than just printing it to the console?
puts "Text to search through:"
text = gets.chomp

puts "Word to redact:"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word == redact
    redacted_str = "RDACTED "
    print redacted_str
  else
    print word + " "
  end
end

=begin
$ ruby redacted_project.rb
Text to search through:
Hi there
Word to redact:
Hi
RDACTED there $
=end
