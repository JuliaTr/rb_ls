=begin
Problem 2: Library and Books

Description​: Create two classes: Book and Library. A Book 
should have a title and an author. A Library should have a 
collection of Book objects. The Library should have a method 
add_book that takes a Book object and adds it to its 
collection, and a method find_book_by_title that returns the 
Book object with the matching title.
=end

class Book
  attr_reader :author, :title

  def initialize(title, author)
    @title = title
    @author = author
  end
end

class Library
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def find_book_by_title(str)
    @books.find { |item| str }
  end
end

book1 = Book.new("1984", "George Orwell")
book2 = Book.new("The Great Gatsby", "F. Scott Fitzgerald")
library = Library.new
library.add_book(book1)
library.add_book(book2)

p library
#<Library:0x0000000101a04900 @books=[#<Book:0x0000000101a049f0 
# @title="1984", @author="George Orwell">, #<Book:0x0000000101a04978 
# @title="The Great Gatsby", @author="F. Scott Fitzgerald">]>

found_book = library.find_book_by_title("1984")
p found_book
#<Book:0x0000000101a049f0 @title="1984", @author="George Orwell">
p found_book.author == "George Orwell"
