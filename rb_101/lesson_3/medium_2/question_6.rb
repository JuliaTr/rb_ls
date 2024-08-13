# Simplify the code below, but remain the return value

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

p color = ['blue', 'green', 'yellow'].sample
p color_valid(color)

=begin
$ ruby question_6.rb
"green"
true
$ ruby question_6.rb
"yellow"
false
$ ruby question_6.rb
"yellow"
false
$ ruby question_6.rb
"blue"
true
=end



## Solution:

def color_valid(color)
  color == "blue" || color == "green"
end

p color = ['blue', 'green', 'yellow'].sample
p color_valid(color)

=begin
$ ruby question_6.rb
"blue"
true
$ ruby question_6.rb
"green"
true
$ ruby question_6.rb
"green"
true
$ ruby question_6.rb
"green"
true
$ ruby question_6.rb
"yellow"
false
=end



## Experimens:

def color_valid(color)
  color == "blue" || color == "green" ? true : false
end

p color = ['blue', 'green', 'yellow'].sample
p color_valid(color)

=begin
$ ruby question_6.rb
"yellow"
false
$ ruby question_6.rb
"blue"
true
$ ruby question_6.rb
"green"
true
=end