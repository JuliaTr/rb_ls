=begin
Write a method that will take a short line of text, and print it within a box.

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+
=end

### More refactored solution: 
PLUS_SIGN = '+'
PIPE = '|'
DASH = '-'
EMPTY_SPACE = ' '

def print_in_box(str)
  borders = "#{PLUS_SIGN}#{DASH * (str.length + 2)}#{PLUS_SIGN}"
  space_around_string = "#{PIPE} #{EMPTY_SPACE * str.length} #{PIPE}"
  place_for_text = "#{PIPE} #{str} #{PIPE}"
  
  puts borders
  puts space_around_string
  puts place_for_text
  puts space_around_string
  puts borders
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

=begin
$ ruby bannerizer.rb
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
+--+
|  |
|  |
|  |
+--+
=end



### Refactored solutions:
def print_in_box(str)
  plus_sign = '+'
  pipe = '|'
  dash = '-'
  empty_space = ' '

  borders = "#{plus_sign}#{dash * (str.length + 2)}#{plus_sign}"
  space_around_string = "#{pipe} #{empty_space * str.length} #{pipe}"
  place_for_text = "#{pipe} #{str} #{pipe}"
  
  puts borders
  puts space_around_string
  puts place_for_text
  puts space_around_string
  puts borders
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

=begin
$ ruby bannerizer.rb
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
+--+
|  |
|  |
|  |
+--+
=end



## Solution:
def display_borders(str, plus_sign, dash)
  puts "#{plus_sign}#{dash * (str.length + 2)}#{plus_sign}"
end

def display_space_around_string(str, pipe, empty_space)
  puts "#{pipe} #{empty_space * str.length} #{pipe}"
end

def print_in_box(str)
  plus_sign = '+'
  pipe = '|'
  dash = '-'
  empty_space = ' '

  display_borders(str, plus_sign, dash)
  display_space_around_string(str, pipe, empty_space)
  puts "#{pipe} #{str} #{pipe}"
  display_space_around_string(str, pipe, empty_space)
  display_borders(str, plus_sign, dash)
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

=begin
$ ruby bannerizer.rb
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
+--+
|  |
|  |
|  |
+--+
=end


## Possible solution:
def print_in_box(message)
  horizontal_rule = "+#{'-' *(message.size + 2)}+"
  empty_line = "|#{' ' * (message.size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{message} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

=begin
$ ruby bannerizer.rb
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
+--+
|  |
|  |
|  |
+--+
=end



### Further exploration:
=begin
Modify this method so it will truncate the message if it will 
be too wide to fit inside a standard terminal window (80 
columns, including the sides of the box).

__________________________________________________________

PEDAC:

Reqs/rules:
- If the length of the string is more than 76 characters,
  the text should be wrapped by the frame.
- 80 columns include spaces left, right, sides of the box.
- String must have maximum 76 characters

Examples:

+------------------------------------------------------------------------------+
|                                                                              |
| To boldly go where no one has gone before. To boldly go where no one has gon |
| e before. To boldly go where no one has gone before.                         |
|                                                                              |
+------------------------------------------------------------------------------+


Data Structure: string


Algorithm for slicing string:
- If the length of the string is more than 76 characters
  - Split string into array of strings, with each string of 76 characters
  - Output each string


Notes:
76 - length of text
2 - borders
2 - white space

80 = 76 + 2 + 2
=end

PLUS_SIGN = '+'
PIPE = '|'
DASH = '-'
EMPTY_SPACE = ' '
MAX_WIDTH = 76

def print_in_box_text_wrap(str)
  borders = "#{PLUS_SIGN}#{DASH * (MAX_WIDTH + 2)}#{PLUS_SIGN}"
  space_around_string = "#{PIPE} #{EMPTY_SPACE * MAX_WIDTH} #{PIPE}"

  puts borders
  puts space_around_string

  if str.length > MAX_WIDTH
    until str.length == 0
      sliced_str = str.slice!(0..75)
      puts "#{PIPE} #{sliced_str}#{EMPTY_SPACE * (MAX_WIDTH - sliced_str.length)} #{PIPE}"
    end
  end

  puts space_around_string
  puts borders
end

print_in_box_text_wrap('To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before.')

=begin
$ ruby bannerizer.rb
+------------------------------------------------------------------------------+
|                                                                              |
| To boldly go where no one has gone before. To boldly go where no one has gon |
| e before. To boldly go where no one has gone before.                         |
|                                                                              |
+------------------------------------------------------------------------------+
=end



### Experiments:
str = 'To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before.'

p str.split(' ', 76)
=begin
["To", "boldly", "go", "where", "no", "one", "has", "gone", 
"before.", "To", "boldly", "go", "where", "no", "one", "has", 
"gone", "before.", "To", "boldly", "go", "where", "no", "one", 
"has", "gone", "before."]
=end

p str.slice(0..75)
p str

=begin
"To boldly go where no one has gone before. To boldly go where 
no one has gon"

"To boldly go where no one has gone before. To boldly go where 
no one has gone before. To boldly go where no one has gone 
before."
=end

p str.slice!(0..75)
p str

=begin
"To boldly go where no one has gone before. To boldly go where 
no one has gon"
"e before. To boldly go where no one has gone before."
=end
