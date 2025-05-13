=begin
Exercise (​advanced)​: Create a method that takes a sentence and 
returns a new sentence where each word is replaced with its 
reverse if if it has an odd number of characters, or upcase 
if it has an even number of characters. 
  
For example:
text = "hello world ruby programming"
# should return: "olleh dlrow RUBY gnimmargorP"

Notes:
hello -> 5
world -> 5
ruby -> 4
programming -> 11
=end

text = "hello world ruby programming"

def reverse_and_upcase(str)
  arr = str.split

  arr.map do |word|
    if word.length.even?
      word.upcase!
    else
      word.reverse!
    end
  end

  arr.join(' ')
end

p reverse_and_upcase(text) == "olleh dlrow RUBY gnimmargorp" # true
p text  # "hello world ruby programming"
