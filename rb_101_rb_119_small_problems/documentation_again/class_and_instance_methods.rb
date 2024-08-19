# Ruby documentation for methods `File::path` and `File#paath` for version 2.7.8.
# How are they different?

## Solution:

# `File::path`: https://ruby-doc.org/2.7.8/File.html#method-c-path
# "Reurns the string representation of the path."
# Example from the documentation:

File.path("/dev/null")           # => "/dev/null"
File.path(Pathname.new("/tmp"))  # => "/tmp"



# `::` in `File::path` means that `path` is a class method.
# Class methods are called on the class.

puts File.path('dev')

# `path` is called on `File` class.


# `#` in `File#path` means that `path` is an instance method.
# Instance methods are called on objects.

l = File.new('my_new_file.txt')
puts l.path

# `#path` is called on the object of the `File` class, which is named `l`.
