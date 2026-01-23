=begin
You started writing a very basic class for handling files. 
However, when you begin to write some simple test code, you get a 
`NameError`. The error message complains of an uninitialized 
constant `File::FORMAT`.

What is the problem and what are possible ways to fix it?
=end

## Possible solution
# Option 1
class File
  attr_accessor :name, :byte_content

  def initialize(name)
    @name = name
  end

  alias_method :read, :byte_content
  alias_method :write, :byte_content=

  def copy(target_file_name)
    target_file = self.class.new(target_file_name)
    target_file.write(read)

    target_file
  end

  def to_s
    # # Before:
    # "#{name}. #{FORMAT}"

    # After:
    # `self.class` is the class of the caller
    "#{name}.#{self.class::FORMAT}"
  end
end

class MarkdownFile < File
  FORMAT = :md
end

class VectorGraphicsFile < File
  FORMAT = :svg
end

class MP3File < File
  FORMA = :mp3
end

blog_post = MarkdownFile.new('Adventures_in_OOP_Land')
blog_post.write('Content will be added soon!'.bytes)

copy_of_blog_post = blog_post.copy('Same_Adventures_in_OOP_Land')

puts copy_of_blog_post.is_a? MarkdownFile      # true
puts copy_of_blog_post.read == blog_post.read  # true

puts blog_post  # after: Adventures_in_OOP_Land.md
# Before:
# uninitialized constant File::FORMAT (NameError)



# Option 2
class File
  # code omitted

  def to_s
    "#{name}.#{format}"
  end
end

class MarkdownFile < File
  def format
    :md
  end
end

class VectorGraphicsFile < File
  def format
    :svg
  end
end

class MP3File < File
  def format
    :mp3
  end
end
