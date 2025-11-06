=begin
`String#upcase!` is a destructive method, so why does this code 
print HEY you instead of HEY YOU? Modify the code so that it 
produces the expected output.
=end

def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you')  # HEY you

=begin
**Why does this code print HEY you instead of HEY YOU?**

This is becase on line 8, the `#each` method is invoked on 
a new array of new string objects `["y", "o", "u"]` returned by 
`#chars` method invoked on the object referenced by `name`.
=end


## Bug fix
# Option 1:
def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you')      # HEY YOU


# Option 2:
def shout_out_to(name)
  puts 'HEY ' + name.upcase!
end

shout_out_to('you')    # HEY YOU


# Option 3:
def shout_out_to(name)
  puts 'HEY ' + name.upcase
end

shout_out_to('you')    # HEY YOU
