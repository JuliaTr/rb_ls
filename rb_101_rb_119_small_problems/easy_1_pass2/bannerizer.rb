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

def display_borders(str, plus_sign, dash)
  if str.empty?
    puts "#{plus_sign}#{dash * 2}#{plus_sign}"
  else
    puts "#{plus_sign}#{dash * (str.length + 2)}#{plus_sign}"
  end
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
