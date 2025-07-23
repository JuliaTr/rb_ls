# The following code throws an error. Find out what is wrong 
# and think about how you would fix it.

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 
          'silver', 'black', 'turquoise']
things = ['pen', 'mouse pad', 'coffe mug', 'sofa', 'surf board',
          'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > colors.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

=begin
I have a dark blue surf board.
And a black pen.
And a red sofa.
And a yellow mouse pad.
And a green notebook.
And a purple coffe mug.
And a turquoise training mat.
colorful_things.rb:19:in `+': no implicit conversion of nil into String (TypeError)
=end



## Bug fix:
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 
          'silver', 'black', 'turquoise']   # 8 colors
things = ['pen', 'mouse pad', 'coffe mug', 'sofa', 'surf board',
          'training mat', 'notebook']       # 7 things

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i >= things.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# Output:
# I have a silver mouse pad.
# And a black coffe mug.
# And a turquoise notebook.
# And a purple pen.
# And a dark blue surf board.
# And a yellow training mat.
# And a red sofa.


=begin
Iteration 1 (i = 0):
0 >= 7  # false
output: I have a silver mouse pad.
i = 1

Iteration 2 (i = 1):
1 >= 7  # false
output: And a black coffe mug.
i = 2

Iteration 3 (i = 2):
2 >= 7  # false
output: And a turquoise notebook.
i = 3

Iteration 4 (i = 3):
3 >= 7  # false
output: And a purple pen.
i = 4

Iteration 5 (i = 4):
4 >= 7  # false
output: And a dark blue surf board.
i = 5

Iteration 6 (i = 5):
5 >= 7  # false
output: And a yellow training mat.
i = 6

Iteration 7 (i = 6):
6 >= 7  # false
output: And a red sofa.
i = 7

Iteration 8 (i = 7)
7 >= 7  # true
break

=end



## Possible solution:
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 
          'silver', 'black', 'turquoise']   # 8 colors
things = ['pen', 'mouse pad', 'coffe mug', 'sofa', 'surf board',
          'training mat', 'notebook']       # 7 things

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length - 1

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# Output:
# I have a dark blue pen.
# And a black training mat.
# And a red coffe mug.
# And a turquoise surf board.
# And a yellow mouse pad.
# And a purple notebook.
# And a silver sofa.

=begin
Iteration 1 (i = 0):
0 > 7 - 1   # 6 = 7 - 1; false 
output: I have a dark blue pen.
i = 1

Iteration 2 (i = 1):
1 > 7 - 1   # false
output: And a black training mat.
i = 2

Iteration 3 (i = 2):
2 > 7 - 1   # false
output: And a red coffe mug.
i = 3

Iteration 4 (i = 3):
3 > 7 - 1   # false
output: And a turquoise surf board.
i = 4

Iteration 5 (i = 4):
4 > 7 - 1   # false
output: And a yellow mouse pad.
i = 5

Iteration 6 (i = 5):
5 > 7 - 1   # false
output: And a purple notebook.
i = 6

Iteration 7 (i = 6):
6 > 6      # false
output: And a silver sofa.
i = 7

Iteration 8 (i = 7)
7 > 6      # true
break

=end



### Experiment:
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 
          'silver', 'black', 'turquoise']   # 8 colors
things = ['pen', 'mouse pad', 'coffe mug', 'sofa', 'surf board',
          'training mat', 'notebook']       # 7 things

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i == things.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# Output:
# I have a dark blue coffe mug.
# And a black mouse pad.
# And a green surf board.
# And a turquoise notebook.
# And a red pen.
# And a yellow training mat.
# And a silver sofa.

=begin
Iteration 1 (i = 0):
0 == 7   # false 
output: I have a dark blue coffe mug.
i = 1

Iteration 2 (i = 1):
1 == 7   # false
output: And a black mouse pad.
i = 2

Iteration 3 (i = 2):
2 == 7   # false
output: And a green surf board.
i = 3

Iteration 4 (i = 3):
3 == 7   # false
output: And a turquoise notebook.
i = 4

Iteration 5 (i = 4):
4 == 7   # false
output: And a red pen.
i = 5

Iteration 6 (i = 5):
5 == 7   # false
output: And a yellow training mat.
i = 6

Iteration 7 (i = 6):
6 == 7  # false
output: And a silver sofa.
i = 7

Iteration 8 (i = 7):
7 == 7  # true
break
=end


=begin
`i` should be greater or equal to things.length. In these 
examples: `break if i >= things.length`, `break if i > things.length - 1`, 
and `break if i == things.length` Ruby break out of the 
loop when `i` is greater than or equal the argument to the 
right.

break if i >= things.length
break if i > things.length - 1
break if i == things.length
=end



## Furtther exploraion:
# How can you change the break condition, such that the loop 
# always stops once we hit the end of the shorter array?

# Option 1:
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 
          'silver', 'black', 'turquoise']   # 8 colors
things = ['pen', 'mouse pad', 'coffe mug', 'sofa', 'surf board',
          'training mat', 'notebook']       # 7 things

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length - 1 || i > colors.length - 1
  
  if i == 0
    puts "I have a #{colors[i]} #{things[i]}."
  else
    puts "And a #{colors[i]} #{things[i]}."
  end

  i += 1
end

=begin
I have a red training mat.
And a turquoise notebook.
And a green mouse pad.
And a purple sofa.
And a dark blue surf board.
And a silver pen.
And a black coffe mug.
=end


# Opion 2:
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 
          'silver', 'black', 'turquoise']   # 8 colors
things = ['pen', 'mouse pad', 'coffe mug', 'sofa', 'surf board',
          'training mat', 'notebook']       # 7 things

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i >= things.length || i >= colors.length

  if i == 0
    puts "I have a #{colors[i]} #{things[i]}."
  else
    puts "And a #{colors[i]} #{things[i]}."
  end

  i += 1
end

=begin
I have a turquoise notebook.
And a green coffe mug.
And a red mouse pad.
And a purple sofa.
And a yellow surf board.
And a black training mat.
And a silver pen.
=end


# Option 3:
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 
          'silver', 'black', 'turquoise']   # 8 colors
things = ['pen', 'mouse pad', 'coffe mug', 'sofa', 'surf board',
          'training mat', 'notebook']       # 7 things

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i == things.length || i == colors.length

  if i == 0
    puts "I have a #{colors[i]} #{things[i]}."
  else
    puts "And a #{colors[i]} #{things[i]}."
  end

  i += 1
end

=begin
I have a dark blue mouse pad.
And a green training mat.
And a red notebook.
And a yellow sofa.
And a purple coffe mug.
And a turquoise pen.
And a black surf board.
=end
