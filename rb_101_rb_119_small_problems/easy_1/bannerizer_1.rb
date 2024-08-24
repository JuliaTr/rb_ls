## Further exploration

# Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window
# (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on
# multiple lines, but still within a box.

def print_in_box(string)
  horizontal_rule = "+#{'-' * (string[0..75].size + 2)}+"
  empty_line = "|#{' ' * (string[0..75].size + 2)}|"

  puts horizontal_rule
  puts empty_line
  puts "| #{string[0..75]} |"
  puts "| #{string[76..131]}#{' ' * (string[0..75].size - string[76..131].size)} |"
  puts empty_line
  puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before. To boldly go where no one has gone before. To boldly go where no one has gone before.')

# +------------------------------------------------------------------------------+
# |                                                                              |
# | To boldly go where no one has gone before. To boldly go where no one has gon |
# | e before. To boldly go where no one has gone before.                         |
# |                                                                              |
# +------------------------------------------------------------------------------+