=begin
On line 42 of our code, we intend to display information 
regarding the books currently checked in to our community library. 
Instead, an exception is raised. Determine what caused this error 
and fix the code so that the data is displayed as expected.
=end

class Library
  attr_accessor :address, :phone, :books

  def initialize(address, phone)
    @address = address
    @phone = phone
    @books = []
  end

  def check_in(book)
    books.push(book)
  end
end

class Book
  attr_accessor :title, :author, :isbn

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
  end

  def display_data
    puts "--------------------"
    puts "Title: #{title}"
    puts "Author: #{author}"
    puts "ISBN: #{isbn}"
    puts "-------------------"
  end
end

community_library = Library.new('123 Main St.', '555-232-5652')
learn_to_program = Book.new('Learn to Program', 'Chris Pine', '978-1934356364')
little_women = Book.new('Little Women', 'Louisa May Alcott', '978-1420951080')
wrinkle_in_time = Book.new('A Wrinkle in Time', 'Madeleine L\'Engle', '978-0312367541')

community_library.check_in(learn_to_program)
community_library.check_in(little_women)
community_library.check_in(wrinkle_in_time)

community_library.books.display_data
=begin
undefined method `display_data' for [#<Book:0x0000000105dd4310 
@title="Learn to Program", @author="Chris Pine">, 
#<Book:0x0000000105dd4248 @title="Little Women", 
@author="Louisa May Alcott">, 
#<Book:0x0000000105dd41d0 @title="A Wrinkle in Time", 
@author="Madeleine L'Engle">]:Array (NoMethodError)
=end



## Possible solution
class Library
  attr_accessor :address, :phone, :books

  def initialize(address, phone)
    @address = address
    @phone = phone
    @books = []
  end

  def check_in(book)
    books.push(book)
  end

  def display_books
    books.each do |book|
      book.display_data
    end
  end
end

class Book
  attr_accessor :title, :author, :isbn

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn
  end

  def display_data
    puts "--------------"
    puts "Title: #{title}"
    puts "Author: #{author}"
    puts "ISBN: #{isbn}"
    puts "--------------"
  end
end

community_library = Library.new('123 Main St.', '555-232-5652')
learn_to_program = Book.new('Learn to Program', 'Chris Pine', '978-1934356364')
little_women = Book.new('Little Women', 'Louisa May Alcott', '978-1420951080')
wrinkle_in_time = Book.new('A Wrinkle in Time', 'Madeleine L\'Engle', '978-0312367541')

community_library.check_in(learn_to_program)
community_library.check_in(little_women)
community_library.check_in(wrinkle_in_time)

p community_library.books
=begin
[#<Book:0x0000000101834328 @title="Learn to Program", 
@author="Chris Pine">, 
#<Book:0x0000000101834260 @title="Little Women", 
@author="Louisa May Alcott">, 
#<Book:0x00000001018341e8 @title="A Wrinkle in Time", 
@author="Madeleine L'Engle">]
=end

community_library.display_books
=begin
--------------
Title: Learn to Program
Author: Chris Pine
ISBN: 
--------------
--------------
Title: Little Women
Author: Louisa May Alcott
ISBN: 
--------------
--------------
Title: A Wrinkle in Time
Author: Madeleine L'Engle
ISBN: 
--------------
=end
